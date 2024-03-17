class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var known:[Int : Int] = [:]
        var result: [Int] = []
        for i in 0...nums.count {
            let inquiry = target - nums[i]
            if known.keys.contains(inquiry) {
                result.append(known[inquiry]!)
                result.append(i)
                return result
            }
            let knownIndex = nums[i]
            known[knownIndex] = i
        }
        return []
    }
}