#
# @lc app=leetcode id=122 lang=python3
#
# [122] Best Time to Buy and Sell Stock II
#

# @lc code=start
class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        left = 0
        len_prices = len(prices)
        profit = 0
        while left < len_prices-1:
            if prices[left] < prices[left+1]:
                for right in range(left+1, len_prices):
                    if prices[left] < prices[right]:
                        profit += prices[right] - prices[left]
                        left = right
                        break
            else:
                left += 1
        return profit






# @lc code=end
