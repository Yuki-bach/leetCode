#
# @lc app=leetcode id=80 lang=python3
#
# [80] Remove Duplicates from Sorted Array II
#

# @lc code=start
class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        new_i = 2
        for i in range(2, len(nums)):
            shouldAdd = (nums[i] != nums[i-1]) or (nums[i] == nums[new_i-1] and nums[i] != nums[new_i-2])
            if shouldAdd:
                nums[new_i] = nums[i]
                new_i += 1
        return new_i
# @lc code=end
