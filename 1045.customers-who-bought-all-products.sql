--
-- @lc app=leetcode id=1045 lang=mysql
--
-- [1045] Customers Who Bought All Products
--

-- @lc code=start
# Write your MySQL query statement below
select customer_id
from customer
group by customer_id
having count(distinct product_key) = (select count(product_key) from product);
-- @lc code=end
