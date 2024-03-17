--
-- @lc app=leetcode id=610 lang=mysql
--
-- [610] Triangle Judgement
--

-- @lc code=start
# Write your MySQL query statement below
select *, (case when x+y>z and y+z>x and z+x>y then "Yes" else "No" end) as triangle
from Triangle;
-- @lc code=end
