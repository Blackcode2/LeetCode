class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic: [Int : Int] = [:]
        var result: [Int] = []
        
        for (index, value) in nums.enumerated() {
            dic[nums[index]] = index
        }

        for i in 0...nums.count-1 {
            var complement = target - nums[i]
            if dic[complement] != nil && dic[complement] != i {
                return [i, dic[complement]!]
            }
        }

        return result
    }
}