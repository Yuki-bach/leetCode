--
-- @lc app=leetcode id=1280 lang=mysql
--
-- [1280] Students and Examinations
--

-- @lc code=start
# Write your MySQL query statement below
select st.student_id, st.student_name, sub.subject_name, count(e.student_id) as attended_exams
from students st
cross join subjects sub
left join examinations e
    on e.student_id = st.student_id and e.subject_name = sub.subject_name
group by st.student_id, e.subject_name, sub.subject_name
order by st.student_id, sub.subject_name
-- @lc code=end
