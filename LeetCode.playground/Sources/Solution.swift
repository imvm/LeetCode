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

    //https://leetcode.com/problems/check-if-n-and-its-double-exist/
    func checkIfExist(_ arr: [Int]) -> Bool {
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
