#
# @lc app=leetcode id=26 lang=python3
#
# [26] Remove Duplicates from Sorted Array
#

# @lc code=start
class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        new_i = 1
        for i in range(1, len(nums)):
            if nums[i] != nums[i-1]:
                nums[new_i] = nums[i]
                new_i += 1
        return new_i

# @lc code=end