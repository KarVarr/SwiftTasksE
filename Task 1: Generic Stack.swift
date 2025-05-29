class Stack<T> {
    var stack: [T] = []
    
    func push(_ element: T) {
        stack.append(element)
    }
    
    func pop() -> T? {
        return stack.popLast()
    }
    
    func size() -> Int {
        return stack.count
    }
    
    func printStackContents() -> String {
        return stack.map{ "\($0)" }.joined(separator: ", ")
    }
}


let numbers = Stack<Int>()
numbers.push(108)
numbers.push(1540)
numbers.push(11210)
numbers.push(66)

print(numbers.printStackContents())
print(numbers.size())

numbers.pop()
print(numbers.printStackContents())
print(numbers.size())


let lastNumber = numbers.pop()
print(lastNumber ?? 0)
print(numbers.size())
print(numbers.printStackContents())
