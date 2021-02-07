public class Solution {
    public init() {}

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
}
