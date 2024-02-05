--
-- @lc app=leetcode id=1164 lang=mysql
--
-- [1164] Product Price at a Given Date
--

-- @lc code=start
# Write your MySQL query statement below
select distinct product_id, 10 as price
from products
where product_id not in (
    select product_id
    from Products
    where change_date <='2019-08-16'
)
union
select product_id, new_price as price
from products
where (product_id,change_date) in (
    select product_id , max(change_date) as date
    from Products
    where change_date <='2019-08-16'
    group by product_id
)
-- @lc code=end
