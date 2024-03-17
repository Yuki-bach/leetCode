--
-- @lc app=leetcode id=1251 lang=mysql
--
-- [1251] Average Selling Price
--

-- @lc code=start
# Write your MySQL query statement below
select
    p.product_id,
    ifnull(round(sum(u.units*p.price) / sum(u.units), 2), 0) as average_price
from prices p
left join unitsSold u
    on u.product_id = p.product_id
    and u.purchase_date between p.start_date and p.end_date
group by p.product_id
-- @lc code=end
