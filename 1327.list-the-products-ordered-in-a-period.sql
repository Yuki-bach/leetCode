--
-- @lc app=leetcode id=1327 lang=mysql
--
-- [1327] List the Products Ordered in a Period
--

-- @lc code=start
# Write your MySQL query statement below
select p.product_name, sum(o.unit) as unit
from orders o
inner join products p on o.product_id = p.product_id
where year(order_date) = 2020 and month(order_date) = 2
group by o.product_id
having sum(o.unit) >= 100;
-- @lc code=end
