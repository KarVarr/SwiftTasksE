class Person {
    var name: String
    var age: Int
    var isAdult: Bool {
        return age >= 18
    }
    static let minAgeForEnrollment: Int = 16
    lazy var profileDescription: String = "\(name) is \(age) years old."
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    init?(age: Int) {
        if age < 16 {return nil}
        self.name = "newName"
        self.age = age
    }
}

class Student: Person {
    var studentID: String
    var major: String
    static var studentCount: Int = 0
    weak var advisor: Professor?
    
    var formattedID: String {
        return "ID: \(studentID.uppercased())"
    }
    
    required init(name: String, age: Int, studentID: String, major: String) {
        self.studentID = studentID
        self.major = major
        super.init(name: name, age: age)
    }
    
    convenience init() {
        self.init(name: "Karen", age: 36, studentID: "1", major: "iOS")
    }
}

class Professor: Person {
    var faculty: String
    static var professorCount: Int = 0
    
    var fullTitle: String {
        return "Professor \(name) of \(faculty)"
    }
    
    init(name: String, age: Int, faculty: String) {
        self.faculty = faculty
        super.init(name: name, age: age)
    }
}

struct University {
    var name: String 
    var location: String
    var description: String {
        return "Name: \(name) and location: \(location)"
    }
}
