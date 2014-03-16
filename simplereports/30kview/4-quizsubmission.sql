-- This Query takes awhile,  maybe 2 minutes for half a million submissions
select "Quiz Submissions by quiz title";
SELECT
    quiz_metadata.title,
    COUNT(quiz_submission_metadata.id) as CountViews,
    COUNT(distinct(quiz_submission_metadata.anon_user_id)) as DistinctUsersViewed

FROM
    quiz_submission_metadata
INNER JOIN
    quiz_metadata
ON
    (
        quiz_submission_metadata.item_id = quiz_metadata.id)
WHERE
    quiz_metadata.deleted <> 1
GROUP BY
    quiz_metadata.title 
ORDER BY CountViews desc;
