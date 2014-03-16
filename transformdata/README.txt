Load the 4 databases provided by Coursera into Mysql;
-- trialload.sql

Create the WeekMap table , delete data and load it with your weeks.
-- load this table in trialag, which is the main db we do our work
-- you can also look at our weekmap.txt file for more information
-- weekmap.sql 


Then run the SQL from the prepdbs folder.
-- prepdbs folder - 3 scripts 
--  forum.sql	general.sql	hashmap.sql



Now lets do the data transformation
-- source forumdb.sql
-- source generaldb.sql 

YOUR DATA TABLE IS NOW READY! 
The format of this table is -

user/week/participation in activities/ grade
n
mysql> describe summary_buckets_g;
+---------------------+--------------+------+-----+---------+-------+
| Field               | Type         | Null | Key | Default | Extra |
+---------------------+--------------+------+-----+---------+-------+
| u1                  | varchar(120) | NO   | MUL | NULL    |       |
| week                | varchar(10)  | NO   | MUL | NULL    |       |
| numlecture          | bigint(21)   | YES  |     | NULL    |       |
| numquiz             | bigint(21)   | YES  |     | NULL    |       |
| numassessment       | bigint(21)   | YES  |     | NULL    |       |
| numassesspeerreview | bigint(21)   | YES  |     | NULL    |       |
| numcomments         | bigint(21)   | YES  |     | NULL    |       |
| numreads            | bigint(21)   | YES  |     | NULL    |       |
| numposts            | bigint(21)   | YES  |     | NULL    |       |
| normal_grade        | float        | YES  | MUL | NULL    |       |
+---------------------+--------------+------+-----+---------+-------+


Now if you want to look at some cohort groups defined by participation
-- in directory simplereports
-- source averages.sql 


You can also look at the the 30,000 foot view of the course with handy queries. 
-- in the directory simplereports/30kview




