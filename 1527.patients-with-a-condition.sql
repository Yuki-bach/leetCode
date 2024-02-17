--
-- @lc app=leetcode id=1527 lang=mysql
--
-- [1527] Patients With a Condition
--

-- @lc code=start
# Write your MySQL query statement below
# Write your MySQL query statement below
select *
from patients
where conditions like "DIAB1%" or conditions like "% DIAB1%";
-- @lc code=end
