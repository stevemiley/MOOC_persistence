use trialag;
-- drop table summary_quiz_weeks;
create table summary_quiz_weeks (select count(item_id) as numquiz,anon_user_id as user,week
from quiz_submission_metadata,
    trialag.weekmap
WHERE
    trialag.quiz_submission_metadata.submission_time BETWEEN trialag.weekmap.start AND trialag.weekmap.end
group by user,week);

create index idx on summary_quiz_weeks(user);
create index idx2 on summary_quiz_weeks(week);


-- assessment
-- drop table summary_assessment_weeks;
create table summary_assessment_weeks (select count(assessment_id) as numassessment,anon_user_id as user,week
 from hg_assessment_submission_metadata,
    trialag.weekmap 
WHERE
    hg_assessment_submission_metadata.submit_time BETWEEN trialag.weekmap.start AND trialag.weekmap.end
 group by user,week);

create index idx on summary_assessment_weeks(user);
create index idx2 on summary_assessment_weeks(week);

-- assessment peer review
-- drop table summary_assessmentpeerreview_weeks;
create table summary_assessmentpeerreview_weeks (select count(assessment_id) as numassesspeerreview,anon_user_id as user,week
 from hg_assessment_peer_grading_set_metadata,
    trialag.weekmap 
WHERE
    hg_assessment_peer_grading_set_metadata.finish_time BETWEEN trialag.weekmap.start AND trialag.weekmap.end
 group by user,week);

create index idx on summary_assessmentpeerreview_weeks(user);
create index idx2 on summary_assessmentpeerreview_weeks(week);




-- drop table summary_lecture_weeks;
-- create table summary_lecture_weeks (select count(item_id) as numlecture,anon_user_id as user,week(from_unixtime(submission_time)) as week  from lecture_submission_metadata group by user,week);

create table summary_lecture_weeks (select count(item_id) as numlecture,anon_user_id as user,week from lecture_submission_metadata,
    trialag.weekmap
WHERE
    lecture_submission_metadata.submission_time  BETWEEN trialag.weekmap.start AND trialag.weekmap.end
group by user,week);
create index idx on summary_lecture_weeks(user);
create index idx2 on summary_lecture_weeks(week);




use trialag;
-- drop table biglist;
create table biglist (select distinct(anon_user_id) u1, week from users, weekmap);
create index idx1 on biglist(u1);
create index idx2 on biglist(week);



-- drop table trialag.summary_buckets;
CREATE TABLE trialag.summary_buckets ( 
SELECT
    trialag.biglist.u1,
    trialag.biglist.week,
    case when trialag.summary_lecture_weeks.numlecture is NULL then 0 else trialag.summary_lecture_weeks.numlecture end as numlecture,
    case when trialag.summary_quiz_weeks.numquiz is NULL then 0 else trialag.summary_quiz_weeks.numquiz end as numquiz,
    case when trialag.summary_assessment_weeks.numassessment is NULL then 0 else trialag.summary_assessment_weeks.numassessment end as numassessment,
    case when trialag.summary_assessmentpeerreview_weeks.numassesspeerreview is NULL then 0 else trialag.summary_assessmentpeerreview_weeks.numassesspeerreview end as numassesspeerreview,
    case when trialag.af_f_c_weeks.numforumcomments is NULL then 0 else trialag.af_f_c_weeks.numforumcomments end as numcomments,
    case when trialag.af_f_v_weeks.numforumreads is NULL then 0 else trialag.af_f_v_weeks.numforumreads end as numreads,
    case when trialag.af_f_p_weeks.numforumposts is NULL then 0 else trialag.af_f_p_weeks.numforumposts end as numposts
FROM
    trialag.biglist
LEFT OUTER JOIN
    trialag.summary_lecture_weeks
ON
    (
        trialag.biglist.u1 = trialag.summary_lecture_weeks.user)
AND (
        trialag.biglist.week = trialag.summary_lecture_weeks.week)
LEFT OUTER JOIN
    trialag.summary_quiz_weeks
ON
    (
        trialag.biglist.u1 = trialag.summary_quiz_weeks.user)
AND (
        trialag.biglist.week = trialag.summary_quiz_weeks.week) 
LEFT OUTER JOIN
    trialag.af_f_c_weeks
ON
    (
        trialag.biglist.u1 = trialag.af_f_c_weeks.user)
AND (
        trialag.biglist.week = trialag.af_f_c_weeks.week) 
LEFT OUTER JOIN
    trialag.af_f_v_weeks
ON
    (
        trialag.biglist.u1 = trialag.af_f_v_weeks.user)
AND (
        trialag.biglist.week = trialag.af_f_v_weeks.week) 
LEFT OUTER JOIN
    trialag.af_f_p_weeks
ON
    (
        trialag.biglist.u1 = trialag.af_f_p_weeks.user)
AND (
        trialag.biglist.week = trialag.af_f_p_weeks.week) 
LEFT OUTER JOIN
    trialag.summary_assessmentpeerreview_weeks
ON
    (
        trialag.biglist.u1 = trialag.summary_assessmentpeerreview_weeks.user)
AND (
        trialag.biglist.week = trialag.summary_assessmentpeerreview_weeks.week)
LEFT OUTER JOIN
    trialag.summary_assessment_weeks
ON
    (
        trialag.biglist.u1 = trialag.summary_assessment_weeks.user)
AND (
        trialag.biglist.week = trialag.summary_assessment_weeks.week)) ;

create index idx1 on  trialag.summary_buckets(u1);
create index idx2 on  trialag.summary_buckets(week);

use trialag;
drop table summary_buckets_g;
CREATE TABLE trialag.summary_buckets_g (  select trialag.summary_buckets.*, trialag.course_grades.normal_grade from trialag.summary_buckets, trialag.course_grades where trialag.course_grades.anon_user_id = trialag.summary_buckets.u1);
create index idx1 on  trialag.summary_buckets_g(u1);
create index idx2 on  trialag.summary_buckets_g(week);
create index idx3 on  trialag.summary_buckets_g(normal_grade);

