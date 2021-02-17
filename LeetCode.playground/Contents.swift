extension Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let sortedNumbers = nums.sorted()
        var lastIndex = 0
        var dict: Dictionary<Int, Int> = [:]

        for sortedNumIndex in 0..<sortedNumbers.count {
            let currentNumber = sortedNumbers[sortedNumIndex]
            let lastNumber = sortedNumbers[lastIndex]
            dict[currentNumber] = lastIndex

            if currentNumber != lastNumber {
                lastIndex = sortedNumIndex
            }
        }

        return nums.map({ dict[$0]! })
    }
}
