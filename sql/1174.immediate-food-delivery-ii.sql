--
-- @lc app=leetcode id=1174 lang=mysql
--
-- [1174] Immediate Food Delivery II
--

-- @lc code=start
# Write your MySQL query statement below
select
    round(sum(case when min_order_date = min_customer_pref_delivery_date then 1 else 0 end) / count(*) * 100, 2)
    as immediate_percentage
from(
    select
        min(order_date) as min_order_date,
        min(customer_pref_delivery_date) as min_customer_pref_delivery_date
    from delivery
    group by customer_id
) as subquery;
-- @lc code=end
