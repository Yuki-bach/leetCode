--
-- @lc app=leetcode id=577 lang=mysql
--
-- [577] Employee Bonus
--

-- @lc code=start
select e.name, b.bonus
from employee e
left join bonus b on e.empId = b.empId
where COALESCE(b.bonus, 0) < 1000;
-- @lc code=end
