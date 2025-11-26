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
            // if(dic.values.contains(complement)){
            //     let keys = dic.filter { $0.value == complement }.map { $0.key }
            //     let filtered = keys.filter { $0 != i }
            //     if(!filtered.isEmpty) {return [i, filtered[0]]}
            // }
        }

        return result
    }
}