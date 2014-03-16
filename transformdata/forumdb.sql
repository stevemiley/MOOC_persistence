use trialaf;
 drop table summary_f_p_weeks;
 create table summary_f_p_weeks (select count(forum_posts.id) as numforumposts,forum_user_id as fuser,week  from forum_posts,
    trialag.weekmap
WHERE
    forum_posts.post_time  BETWEEN trialag.weekmap.start AND trialag.weekmap.end
 group by fuser,week);
 create index idx on summary_f_p_weeks(fuser);
 create index idx2 on summary_f_p_weeks(week);

-- comments
 drop table summary_f_c_weeks;
 create table summary_f_c_weeks (select count(forum_comments.id) as numforumcomments,forum_user_id as fuser,week  from forum_comments,
    trialag.weekmap
WHERE
    forum_comments.post_time  BETWEEN trialag.weekmap.start AND trialag.weekmap.end
 group by fuser,week);
 create index idx on summary_f_c_weeks(fuser);
 create index idx2 on summary_f_c_weeks(week);


-- views 
 drop table summary_f_v_weeks;
 create table summary_f_v_weeks (select count(activity_log.id) as numforumreads,forum_user_id as fuser, trialag.weekmap.week  from activity_log,trialag.weekmap 
 WHERE action = 'view.forum' and activity_log.timestamp  BETWEEN trialag.weekmap.start AND trialag.weekmap.end
group by fuser,week);
 create index idx on summary_f_v_weeks(fuser);
 create index idx2 on summary_f_v_weeks(week);


use trialag;
--  NOW move table to AG with anon_user_id 
drop table af_f_c_weeks;
create table trialag.af_f_c_weeks (
SELECT
    trialhm.hash_mapping.anon_user_id user,
    trialaf.summary_f_c_weeks.numforumcomments,
    trialaf.summary_f_c_weeks.week
FROM
    trialaf.summary_f_c_weeks
INNER JOIN
    trialhm.hash_mapping
ON
    (
        trialaf.summary_f_c_weeks.fuser = trialhm.hash_mapping.forum_user_id)) ;
create index idx1 on trialag.af_f_c_weeks(user);
create index idx2 on trialag.af_f_c_weeks(user);


--  NOW move table to AG with anon_user_id 
drop table af_f_v_weeks;
create table trialag.af_f_v_weeks (
SELECT
    trialhm.hash_mapping.anon_user_id user,
    trialaf.summary_f_v_weeks.numforumreads,
    trialaf.summary_f_v_weeks.week
FROM
    trialaf.summary_f_v_weeks
INNER JOIN
    trialhm.hash_mapping
ON
    (
        trialaf.summary_f_v_weeks.fuser = trialhm.hash_mapping.forum_user_id)) ;
create index idx1 on trialag.af_f_v_weeks(user);
create index idx2 on trialag.af_f_v_weeks(user);



--  NOW move table to AG with anon_user_id 
drop table af_f_p_weeks;
create table trialag.af_f_p_weeks (
SELECT
    trialhm.hash_mapping.anon_user_id user,
    trialaf.summary_f_p_weeks.numforumposts,
    trialaf.summary_f_p_weeks.week
FROM
    trialaf.summary_f_p_weeks
INNER JOIN
    trialhm.hash_mapping
ON
    (
        trialaf.summary_f_p_weeks.fuser = trialhm.hash_mapping.forum_user_id)) ;
create index idx1 on trialag.af_f_p_weeks(user);
create index idx2 on trialag.af_f_p_weeks(user);
