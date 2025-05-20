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

//test
print(isBalancedParentheses(input: ")("))// false
print(isBalancedParentheses(input: ")()(")) // false
print(isBalancedParentheses(input: "(()())"))   // true
print(isBalancedParentheses(input: "test(letters)karen()"))// true
print(isBalancedParentheses(input: "(())")) // true
print(isBalancedParentheses(input: "(()"))  // false
