--
-- @lc app=leetcode id=1141 lang=mysql
--
-- [1141] User Activity for the Past 30 Days I
--

-- @lc code=start
# Write your MySQL query statement below
select
    activity_date as day,
    count(distinct user_id) as active_users
from activity
WHERE activity_date >= DATE_SUB('2019-07-27', INTERVAL 29 DAY)
  AND activity_date <= '2019-07-27'
group by activity_date
-- @lc code=end
