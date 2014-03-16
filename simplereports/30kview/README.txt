This folder has a series of individual scripts to
run to grab specific high level info about a course.
its rather simple, and easy to extend.

These queries don't depend upon the transformed data tables. 

Running the quiz_submission takes a while, we probably need to add
an index on the deleted field.   

Just modify the runoverview.sh   and put in your credentials,
then 

sh runoverview.sh 
