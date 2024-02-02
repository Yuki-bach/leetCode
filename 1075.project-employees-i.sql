--
-- @lc app=leetcode id=1075 lang=mysql
--
-- [1075] Project Employees I
--

-- @lc code=start
# Write your MySQL query statement below
select p.project_id, round(avg(experience_years), 2) as average_years
from project p
join employee e on e.employee_id = p.employee_id
group by p.project_id
-- @lc code=end
