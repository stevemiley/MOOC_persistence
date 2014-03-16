select "number of students applying late days";
SELECT
    COUNT(late_days_applied.anon_user_id) AS "Students who applied late days"
FROM
    late_days_applied ;
