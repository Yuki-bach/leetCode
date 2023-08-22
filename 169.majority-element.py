#
# @lc app=leetcode id=169 lang=python3
#
# [169] Majority Element
#

# @lc code=start
class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        dict_element = {}
        for num in nums:
            if num in dict_element:
                dict_element[num] += 1
            else:
                dict_element[num] = 1
        return max(dict_element, key=dict_element.get)

# @lc code=end
