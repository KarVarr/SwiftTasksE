
protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}


class Circle: Shape {
    let radius: Double
    
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        let squre = radius * radius
        return 3.14 * squre
    }
    
    func perimeter() -> Double {
        return 2 * 3.14 * radius
    }
}

class Rectangle: Shape {
    let width: Double
    let height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func area() -> Double {
        return width*height
    }
    
    func perimeter() -> Double {
        return 2 * (width + height)
    }
}


func generateShape() -> some Shape {
    return Circle(radius: 5)
}
func calculateShapeDetails(_ shape: Shape) -> (Double, Double) {
    let area = shape.area()
    let perimeter = shape.perimeter()
    return (area, perimeter)
}




let (area, perimeter) = calculateShapeDetails(generateShape())

print(area)
print(perimeter)
