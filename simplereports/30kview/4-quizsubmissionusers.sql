select "Lecture views - total views, total distinct users";
set @totalviews = (select count(id) from lecture_submission_metadata);
set @totalusers = (select count(distinct(anon_user_id)) from lecture_submission_metadata);

select concat("Lecture Views: ", @totalviews, " Total Users: ", @totalusers);
