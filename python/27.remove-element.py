#
# @lc app=leetcode id=27 lang=python3
#
# [27] Remove Element
#

# @lc code=start
class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        new_i = 0
        for i in range(len(nums)):
            if nums[i] != val:
                nums[new_i] = nums[i]
                new_i += 1
        return new_i


# @lc code=end
