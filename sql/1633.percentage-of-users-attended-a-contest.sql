--
-- @lc app=leetcode id=1633 lang=mysql
--
-- [1633] Percentage of Users Attended a Contest
--

-- @lc code=start
# Write your MySQL query statement below
select
    r.contest_id,
    round(count(r.user_id) / (select count(user_id) from users) * 100, 2) as percentage
from register r
join users u on u.user_id = r.user_id
group by r.contest_id
order by percentage desc, r.contest_id asc
-- @lc code=end
