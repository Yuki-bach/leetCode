--
-- @lc app=leetcode id=1517 lang=mysql
--
-- [1517] Find Users With Valid E-Mails
--

-- @lc code=start
# Write your MySQL query statement below
select *
from users
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9_\\.-]*@leetcode\\.com$';
-- @lc code=end
