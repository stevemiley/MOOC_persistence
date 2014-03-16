select "Number of Course Announcements by Instructor";
SELECT
    substring(announcements.anon_user_id,-5) AS InstructorCode,
    COUNT(announcements.id)    AS Announcements
FROM
    announcements
WHERE
    announcements.deleted = 0
GROUP BY
   InstructorCode
order by Announcements desc ;
