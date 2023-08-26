#
# @lc app=leetcode id=189 lang=python3
#
# [189] Rotate Array
#

# @lc code=start
class Solution:
    def rotate(self, nums: List[int], k: int) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        n=len(nums)
        k=k%n
        nums[:n-k]=nums[:n-k][::-1]
        nums[n-k:]=nums[n-k:][::-1]
        nums[:]=nums[::-1]

# @lc code=end
