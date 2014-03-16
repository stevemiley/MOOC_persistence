-- You have to edit this file
-- trial is a database prefix
-- af is for the anonymous forums
-- ag is for the anonymous general
-- ..
-- you'll have th change the filename for the database backup you received from coursera
drop database trialaf;
create database trialaf;
use trialaf;
source 20131107-0612-basicwriting-002_anonymized_forum.sql;
drop database trialag;
create database trialag;
use trialag;
source 20131107-0612-basicwriting-002_anonymized_general.sql;
drop database trialhm;
create database trialhm;
use trialhm;
source 20131107-0612-basicwriting-002_hash_mapping.sql;
drop database trialun;
create database trialun;
use trialun;
source 20131107-0612-basicwriting-002_unanonymizable.sql;
