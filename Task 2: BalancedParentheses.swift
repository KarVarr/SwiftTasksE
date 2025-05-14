public func isBalancedParentheses(input: String) -> Bool {
    var arr = [Character]()
    
    for char in input {
        if char == "(" {
            arr.append(char)
        } else if char == ")" {
            if arr.isEmpty {
                return false
            }
            arr.removeLast()
        }
    }
    
    return arr.isEmpty 
}
