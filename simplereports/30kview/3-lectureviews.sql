select "Number of Lecture views - views, then distinctusers ";
SELECT
    lecture_metadata.title,
    COUNT(lecture_submission_metadata.id) as CountViews,
    COUNT(distinct(lecture_submission_metadata.anon_user_id)) as DistinctUsersViewed

FROM
    lecture_submission_metadata
INNER JOIN
    lecture_metadata
ON
    (
        lecture_submission_metadata.item_id = lecture_metadata.id)
WHERE
    lecture_metadata.deleted <> 1
GROUP BY
    lecture_metadata.title 
ORDER BY CountViews desc;
