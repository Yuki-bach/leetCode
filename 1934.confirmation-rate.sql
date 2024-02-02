--
-- @lc app=leetcode id=1934 lang=mysql
--
-- [1934] Confirmation Rate
--

-- @lc code=start
# Write your MySQL query statement below
select s.user_id, round(avg(if(c.action='confirmed',1,0)), 2) as confirmation_rate
from signups s
left join confirmations c on c.user_id = s.user_id
group by s.user_id
-- @lc code=end
