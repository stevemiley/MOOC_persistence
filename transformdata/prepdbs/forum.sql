use trialaf;
-- the activity_log has the MyISAM storage engine, and a different collation
-- but we get an error when altering it directly, so we have to delete a key then re-create it
-- ERROR 1071 (42000) at line 3: Specified key was too long; max key length is 1000 bytes
alter table activity_log drop index timeindex;
alter table activity_log convert to character set utf8mb4 collate utf8mb4_general_ci;
-- note we are restricting the length of certain fields for our indexing, matched by examining the data
create index timeindex on activity_log(timestamp,module(15),action(20),item_id);
