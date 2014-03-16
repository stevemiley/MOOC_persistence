use trialag;
SELECT
    summary_buckets_g.week,
    CAST(AVG(summary_buckets_g.normal_grade) as unsigned) as 'Average Grade',
    COUNT(summary_buckets_g.u1) as 'num students (posts)'
FROM
    summary_buckets_g
WHERE
    summary_buckets_g.numposts >= 1
GROUP BY
    summary_buckets_g.week ;

SELECT
    summary_buckets_g.week,
    CAST(AVG(summary_buckets_g.normal_grade) as unsigned) as 'Average Grade',
    COUNT(summary_buckets_g.u1) as 'num students (posts,lectures)'
FROM
    summary_buckets_g
WHERE
    summary_buckets_g.numposts >= 1
AND    summary_buckets_g.numlecture >= 1
GROUP BY
    summary_buckets_g.week ;


SELECT
    summary_buckets_g.week,
    CAST(AVG(summary_buckets_g.normal_grade) as unsigned) as 'Average Grade',
    COUNT(summary_buckets_g.u1) as 'num students (post,comments,quiz,assessment,peerassess,lecture)'
FROM
    summary_buckets_g
WHERE
    summary_buckets_g.numposts >= 1
AND    summary_buckets_g.numcomments >= 1
AND    summary_buckets_g.numquiz >= 1
AND    summary_buckets_g.numassessment >= 1
AND    summary_buckets_g.numassesspeerreview >= 1
AND    summary_buckets_g.numlecture >= 1
GROUP BY
    summary_buckets_g.week ;


SELECT
    summary_buckets_g.week,
    CAST(AVG(summary_buckets_g.normal_grade) as unsigned) as 'Average Grade',
    COUNT(summary_buckets_g.u1) as 'num students (posts)'
FROM
    summary_buckets_g
WHERE
    summary_buckets_g.numposts >= 1
-- AND    summary_buckets_g.numcomments >= 1
-- AND    summary_buckets_g.numquiz >= 1
-- AND    summary_buckets_g.numassessment >= 1
-- AND    summary_buckets_g.numassesspeerreview >= 1
-- AND    summary_buckets_g.numlecture >= 1
GROUP BY
    summary_buckets_g.week ;


SELECT
    summary_buckets_g.week,
    CAST(AVG(summary_buckets_g.normal_grade) as unsigned) as 'Average Grade',
    COUNT(summary_buckets_g.u1) as 'num students (comments)'
FROM
    summary_buckets_g
WHERE
--    summary_buckets_g.numposts >= 1
    summary_buckets_g.numcomments >= 1
-- AND    summary_buckets_g.numquiz >= 1
-- AND    summary_buckets_g.numassessment >= 1
-- AND    summary_buckets_g.numassesspeerreview >= 1
-- AND    summary_buckets_g.numlecture >= 1
GROUP BY
    summary_buckets_g.week ;


SELECT
    summary_buckets_g.week,
    CAST(AVG(summary_buckets_g.normal_grade) as unsigned) as 'Average Grade',
    COUNT(summary_buckets_g.u1) as 'num students (post,comments)'
FROM
    summary_buckets_g
WHERE
    summary_buckets_g.numposts >= 1
AND    summary_buckets_g.numcomments >= 1
-- AND    summary_buckets_g.numquiz >= 1
-- AND    summary_buckets_g.numassessment >= 1
-- AND    summary_buckets_g.numassesspeerreview >= 1
-- AND    summary_buckets_g.numlecture >= 1
GROUP BY
    summary_buckets_g.week ;


SELECT
    summary_buckets_g.week,
    CAST(AVG(summary_buckets_g.normal_grade) as unsigned) as 'Average Grade',
    COUNT(summary_buckets_g.u1) as 'num students (assessment, peer assessment)'
FROM
    summary_buckets_g
WHERE
--    summary_buckets_g.numposts >= 1
-- AND    summary_buckets_g.numcomments >= 1
-- AND    summary_buckets_g.numquiz >= 1
    summary_buckets_g.numassessment >= 1
AND    summary_buckets_g.numassesspeerreview >= 1
-- AND    summary_buckets_g.numlecture >= 1
GROUP BY
    summary_buckets_g.week ;


SELECT
    summary_buckets_g.week,
    CAST(AVG(summary_buckets_g.normal_grade) as unsigned) as 'Average Grade',
    COUNT(summary_buckets_g.u1) as 'num students (posts, assessment, peer assessment)'
FROM
    summary_buckets_g
WHERE
    summary_buckets_g.numposts >= 1
-- AND    summary_buckets_g.numcomments >= 1
-- AND    summary_buckets_g.numquiz >= 1
AND    summary_buckets_g.numassessment >= 1
AND    summary_buckets_g.numassesspeerreview >= 1
-- AND    summary_buckets_g.numlecture >= 1
GROUP BY
    summary_buckets_g.week ;


SELECT
    summary_buckets_g.week,
    CAST(AVG(summary_buckets_g.normal_grade) as unsigned) as 'Average Grade',
    COUNT(summary_buckets_g.u1) as 'num students (quiz, assessment, peer assessment)'
FROM
    summary_buckets_g
WHERE
--    summary_buckets_g.numposts >= 1
-- AND    summary_buckets_g.numcomments >= 1
    summary_buckets_g.numquiz >= 1
AND    summary_buckets_g.numassessment >= 1
AND    summary_buckets_g.numassesspeerreview >= 1
-- AND    summary_buckets_g.numlecture >= 1
GROUP BY
    summary_buckets_g.week ;


SELECT
    summary_buckets_g.week,
    CAST(AVG(summary_buckets_g.normal_grade) as unsigned) as 'Average Grade',
    COUNT(summary_buckets_g.u1) as 'num students (quiz, assessment)'
FROM
    summary_buckets_g
WHERE
--    summary_buckets_g.numposts >= 1
-- AND    summary_buckets_g.numcomments >= 1
    summary_buckets_g.numquiz >= 1
AND    summary_buckets_g.numassessment >= 1
-- AND    summary_buckets_g.numassesspeerreview >= 1
-- AND    summary_buckets_g.numlecture >= 1
GROUP BY
    summary_buckets_g.week ;


SELECT
    summary_buckets_g.week,
    CAST(AVG(summary_buckets_g.normal_grade) as unsigned) as 'Average Grade',
    COUNT(summary_buckets_g.u1) as 'num students ( assessment)'
FROM
    summary_buckets_g
WHERE
--    summary_buckets_g.numposts >= 1
-- AND    summary_buckets_g.numcomments >= 1
--     summary_buckets_g.numquiz >= 1
    summary_buckets_g.numassessment >= 1
-- AND    summary_buckets_g.numassesspeerreview >= 1
-- AND    summary_buckets_g.numlecture >= 1
GROUP BY
    summary_buckets_g.week ;


SELECT
    summary_buckets_g.week,
    CAST(AVG(summary_buckets_g.normal_grade) as unsigned) as 'Average Grade',
    COUNT(summary_buckets_g.u1) as 'num students ( lectures)'
FROM
    summary_buckets_g
WHERE
--    summary_buckets_g.numposts >= 1
-- AND    summary_buckets_g.numcomments >= 1
--     summary_buckets_g.numquiz >= 1
--    summary_buckets_g.numassessment >= 1
-- AND    summary_buckets_g.numassesspeerreview >= 1
    summary_buckets_g.numlecture >= 1
GROUP BY
    summary_buckets_g.week ;


SELECT
    summary_buckets_g.week,
    CAST(AVG(summary_buckets_g.normal_grade) as unsigned) as 'Average Grade',
    COUNT(summary_buckets_g.u1) as 'num students ( quiz)'
FROM
    summary_buckets_g
WHERE
--    summary_buckets_g.numposts >= 1
-- AND    summary_buckets_g.numcomments >= 1
     summary_buckets_g.numquiz >= 1
--    summary_buckets_g.numassessment >= 1
-- AND    summary_buckets_g.numassesspeerreview >= 1
--    summary_buckets_g.numlecture >= 1
GROUP BY
    summary_buckets_g.week ;
