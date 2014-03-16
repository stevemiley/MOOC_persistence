use trialhm;
-- Make the varchar fields a bit smaller in sizei before converting character set so it doesn't break
alter table hash_mapping modify anon_user_id varchar(120);
alter table hash_mapping modify user_id varchar(120);
alter table hash_mapping modify forum_user_id varchar(120);
alter table hash_mapping modify session_user_id varchar(120);
alter table hash_mapping modify eventing_user_id varchar(120);
alter table hash_mapping convert to character set utf8mb4 collate utf8mb4_general_ci;
create index idx1 on hash_mapping(forum_user_id);
create index idx2 on hash_mapping(session_user_id);
