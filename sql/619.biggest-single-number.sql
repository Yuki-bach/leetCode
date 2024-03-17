--
-- @lc app=leetcode id=619 lang=mysql
--
-- [619] Biggest Single Number
--

-- @lc code=start
# Write your MySQL query statement below
select max(num) as num
from (
    select num
    from myNumbers
    group by num
    having count(num) = 1
) as num
-- @lc code=end
