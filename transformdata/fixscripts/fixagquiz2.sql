use ag;
-- drop table summary_buckets_g;
CREATE TABLE ag.summary_buckets_g (  select ag.summary_buckets.*, ag.course_grades.normal_grade from ag.summary_buckets, ag.course_grades where ag.course_grades.anon_user_id = ag.summary_buckets.u1);
create index idx1 on  ag.summary_buckets_g(u1);
create index idx2 on  ag.summary_buckets_g(week);
create index idx3 on  ag.summary_buckets_g(normal_grade);

