#
# @lc app=leetcode id=121 lang=python3
#
# [121] Best Time to Buy and Sell Stock
#

# @lc code=start
class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        left = 0
        right = 1
        max_profit = 0
        while (right < len(prices)):
            current_profit = prices[right] - prices[left]
            if (prices[left] < prices[right]):
                max_profit = max(max_profit, current_profit)
                print(prices[left], prices[right])
            else:
                left = right
            right += 1
        return max_profit


# @lc code=end
