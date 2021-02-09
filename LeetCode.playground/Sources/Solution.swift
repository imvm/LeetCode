public class Solution {
    public init() {}

    // https://leetcode.com/problems/number-of-good-pairs/submissions/
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var goodPairs = 0

        for i in 0..<nums.count - 1 {
            for j in (i + 1)..<nums.count {
                if nums[i] == nums[j] {
                    goodPairs += 1
                }
            }
        }

        return goodPairs
    }

    // https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/submissions/
    public func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let threshold = candies.max()! - extraCandies
        return candies.map({ $0 >= threshold })
    }

    // https://leetcode.com/problems/latest-time-by-replacing-hidden-digits/
    public func maximumTime(_ time: String) -> String {
        var h1 = time[time.index(time.startIndex, offsetBy: 0)]
        var h2 = time[time.index(time.startIndex, offsetBy: 1)]
        var m1 = time[time.index(time.startIndex, offsetBy: 3)]
        var m2 = time[time.index(time.startIndex, offsetBy: 4)]

        if h1 == "?" {
            if h2 <= "3" || h2 == "?" {
                h1 = "2"
            } else {
                h1 = "1"
            }
        }

        if h2 == "?" {
            if h1 == "1" || h1 == "0" {
                h2 = "9"
            } else {
                h2 = "3"
            }
        }

        if m1 == "?" {
            m1 = "5"
        }

        if m2 == "?" {
            m2 = "9"
        }

        return "\(h1)\(h2):\(m1)\(m2)"
    }

    // https://leetcode.com/problems/defanging-an-ip-address/
    public func defangIPaddr(_ address: String) -> String {
        return address.replacingOccurrences(of: ".", with: "[.]")
    }

    // https://leetcode.com/problems/richest-customer-wealth/
    public func maximumWealth(_ accounts: [[Int]]) -> Int {
        return accounts.map({ $0.reduce(0, +) }).max()!
    }

    // https://leetcode.com/problems/flipping-an-image/
    public func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        return A.map({ $0.map({ abs(1 - $0) }).reversed() })
    }

    // https://leetcode.com/problems/shuffle-the-array/
    public func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        guard n > 0 && nums.count == 2 * n else { fatalError("Invalid input!") }
        var result: [Int] = []

        for i in 0..<n {
            result.append(nums[i])
            result.append(nums[n + i])
        }

        return result
    }

    //https://leetcode.com/problems/check-if-n-and-its-double-exist/
    public func checkIfExist(_ arr: [Int]) -> Bool {
        for i in 0..<arr.count {
            for j in 0..<arr.count {
                if i != j && arr[i] == arr[j] * 2 {
                    return true
                }
            }
        }
        return false
    }
}
