public extension Array where Element == Int {
    var median: Double? {
        guard !isEmpty else { return nil }

        if count.isOdd {
            return Double(self[count/2])
        } else {
            return (Double(self[count/2 - 1]) + Double(self[count/2])) / 2
        }
    }
}

public extension Int {
    var isOdd: Bool {
        !isEven
    }

    var isEven: Bool {
        isMultiple(of: 2)
    }
}
