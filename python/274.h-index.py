#
# @lc app=leetcode id=274 lang=python3
#
# [274] H-Index
#

# @lc code=start
class Solution:
    def hIndex(self, citations: List[int]) -> int:
        len_c = len(citations)
        citations.sort(reverse=True)
        if len_c==1 and citations[0]>0:
            return 1
        if citations[-1] >= len_c:
            return len_c
        for i in range(len_c):
            if citations[i] < i+1:
                return i
        return 0


"""
81/81 cases passed (50 ms)
Your runtime beats 53.41 % of python3 submissions
Your memory usage beats 82.69 % of python3 submissions (16.5 MB)
"""
# @lc code=end
