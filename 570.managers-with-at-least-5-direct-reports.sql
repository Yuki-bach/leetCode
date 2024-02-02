--
-- @lc app=leetcode id=570 lang=mysql
--
-- [570] Managers with at Least 5 Direct Reports
--

-- @lc code=start
# Write your MySQL query statement below
select e2.name
from employee e1
join employee e2 on e1.managerId = e2.id
group by e2.id
having count(e2.id) >= 5
-- @lc code=end
