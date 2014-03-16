use trialag;
drop table summary_buckets_g;
CREATE TABLE trialag.summary_buckets_g (  select trialag.summary_buckets.*, trialag.course_grades.normal_grade from trialag.summary_buckets, trialag.course_grades where trialag.course_grades.anon_user_id = trialag.summary_buckets.u1);
create index idx1 on  trialag.summary_buckets_g(u1);
create index idx2 on  trialag.summary_buckets_g(week);
create index idx3 on  trialag.summary_buckets_g(normal_grade);

