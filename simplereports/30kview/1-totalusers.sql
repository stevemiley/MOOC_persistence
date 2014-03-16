select "total user summary ";
select count(anon_user_id) as TotalUsers, (select count(anon_user_id)  from users where deleted = 0 ) as EnrolledUsers, (select count(anon_user_id)  from users where deleted = 1 ) as DeletedUsers  from users;    

