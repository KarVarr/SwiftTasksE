struct User {
    var username: String
    var email: String 
    var password: String
}

class UserManager {
    var users: [String: User] = [:]
    var userCount: Int {
        return users.count
    }
    
    
    func registerUser(username: String, email: String, password: String) -> Bool {
        guard users[username] == nil else {return false}
        let newUser = User(username: username, email: email, password: password)
        users[username] = newUser
        return true
    }
    
    func login(username:String, password: String) -> Bool {
        guard let user = users[username] else {return false}
        return user.password == password
    }
    
    func removeUser(username: String) -> Bool {
        guard users[username] != nil else {return false}
        users[username] = nil
        return true
    }
}

class AdminUser: UserManager {

    override init() {
        super.init()
    }
    
    func listAllUsers() -> [String] {
        return users.values.map{$0.username}
    }
    
    deinit{print("admin instance is removed from memory")}
}
