public func isPalindrome(input: String) -> Bool {
  guard input.count > 1 else {return false}
  let newInput = input.lowercased().filter {$0.isLetter || $0.isNumber}
  return newInput == String(newInput.reversed())
}

