public extension Int {
    func isPalindrome() -> Bool {
        String(self).isPalindrome()
    }
}

public extension String {
    func isPalindrome() -> Bool {
        for i in 0..<count/2 {
            guard self[i] == self[count - 1 - i] else { return false }
        }
        return true
    }
}

public extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
