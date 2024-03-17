--
-- @lc app=leetcode id=1667 lang=mysql
--
-- [1667] Fix Names in a Table
--

-- @lc code=start
# Write your MySQL query statement below
select
    user_id,
    concat(upper(substr(name,1,1)), lower(substr(name,2))) as name
from users
order by user_id
-- @lc code=end
