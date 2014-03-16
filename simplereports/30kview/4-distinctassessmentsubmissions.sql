select "Assessments and count of distinct users submitted ";
SELECT
    hg_assessment_metadata.title,
    COUNT(distinct(hg_assessment_submission_metadata.anon_user_id)) as CountDistinctUsers
FROM
    hg_assessment_submission_metadata
INNER JOIN
    hg_assessment_metadata
ON
    (
        hg_assessment_submission_metadata.assessment_id = hg_assessment_metadata.id)
GROUP BY
    hg_assessment_metadata.title ;

set @assess = (
SELECT 
    COUNT(distinct(hg_assessment_peer_grading_set_metadata.anon_user_id))
FROM
    hg_assessment_peer_grading_set_metadata) ;

select concat("Number of students who did peer assessment:  ", @assess);
