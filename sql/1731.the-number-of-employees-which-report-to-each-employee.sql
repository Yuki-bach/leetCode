--
-- @lc app=leetcode id=1731 lang=mysql
--
-- [1731] The Number of Employees Which Report to Each Employee
--

-- @lc code=start
# Write your MySQL query statement below
select
    m.employee_id,
    m.name,
    count(*) as reports_count,
    round(avg(e.age)) as average_age
from employees e
join employees m on e.reports_to = m.employee_id
group by m.employee_id
order by m.employee_id
-- @lc code=end
