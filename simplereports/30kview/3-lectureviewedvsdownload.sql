select "Number of lectures accessed by download or view)"; 
SELECT DISTINCT
    COUNT(lecture_submission_metadata.id) as Lecture,
    lecture_submission_metadata.action as "Method of Access"
FROM
    lecture_submission_metadata
GROUP BY
    lecture_submission_metadata.action;
