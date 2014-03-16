select "Overview - enrolled students, and 2 sets (grade over 50, grade over 70)";
set @totalstudents = (SELECT
    COUNT(users.anon_user_id)
FROM
    course_grades
INNER JOIN
    users
ON
    (
        course_grades.anon_user_id = users.anon_user_id)
INNER JOIN
    access_groups
ON
    (
        users.access_group_id = access_groups.id)
WHERE
    access_groups.name = 'Student'
AND users.deleted <> 1) ;





set @totalstudentsover70 = (SELECT
    COUNT(users.anon_user_id)
FROM
    course_grades
INNER JOIN
    users
ON
    (
        course_grades.anon_user_id = users.anon_user_id)
INNER JOIN
    access_groups
ON
    (
        users.access_group_id = access_groups.id)
WHERE
    access_groups.name = 'Student' and course_grades.normal_grade >= 70
AND users.deleted <> 1) ;




set @totalstudentsover50 = (SELECT
    COUNT(users.anon_user_id)
FROM
    course_grades
INNER JOIN
    users
ON
    (
        course_grades.anon_user_id = users.anon_user_id)
INNER JOIN
    access_groups
ON
    (
        users.access_group_id = access_groups.id)
WHERE
    access_groups.name = 'Student' and course_grades.normal_grade >= 50
AND users.deleted <> 1) ;

select concat("Enrolled Students: ", @totalstudents, " , Grade over 50: ", @totalstudentsover50, " ,Grade over 70: ", @totalstudentsover70);
