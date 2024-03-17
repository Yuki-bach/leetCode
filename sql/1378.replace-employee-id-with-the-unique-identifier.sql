--
-- @lc app=leetcode id=1378 lang=mysql
--
-- [1378] Replace Employee ID With The Unique Identifier
--

-- @lc code=start
# Write your MySQL query statement below
select eu.unique_id as unique_id, e.name as name
from Employees e
left join EmployeeUNI eu on e.id = eu.id
-- @lc code=end
