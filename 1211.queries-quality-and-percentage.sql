--
-- @lc app=leetcode id=1211 lang=mysql
--
-- [1211] Queries Quality and Percentage
--

-- @lc code=start
# Write your MySQL query statement below
select
    query_name,
    round(avg(rating / position), 2) as quality,
    round(sum(if(rating < 3,1,0)) / count(query_name) * 100, 2) as poor_query_percentage
from queries
where query_name is not null
group by query_name
-- @lc code=end
