--
-- @lc app=leetcode id=1193 lang=mysql
--
-- [1193] Monthly Transactions I
--

-- @lc code=start
# Write your MySQL query statement below
select
    DATE_FORMAT(trans_date, '%Y-%m') as month,
    country,
    count(id) as trans_count,
    sum(if(state="approved", 1,0)) as approved_count,
    sum(amount) as trans_total_amount,
    sum(if(state="approved", amount, 0)) as approved_total_amount
from transactions
group by month, country
-- @lc code=end
