struct School {
    enum SchoolRole {
        case student
        case teacher
        case administrator
    }
    
    class Person {
        let name: String
        let role: SchoolRole
        
        init(name: String, role: SchoolRole) {
            self.name = name
            self.role = role
        }
    }
    var person: [Person] = []
    mutating func addPerson(_ newPerson: Person) {
        person.append(newPerson)
    }
    subscript(role: SchoolRole) -> [Person] {
        return person.filter {$0.role == role}
    }
}

func countStudents(in school: School) -> Int {
    return school[.student].count
}

func countTeachers(in school: School) -> Int {
    return school[.teacher].count
}

func countAdministrators(in school: School) -> Int {
    return school[.administrator].count
}
