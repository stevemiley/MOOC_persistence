The files in this directory contain SQL queries that were used to 
optimize and transform data exports from a Coursera MOOC course
in late 2013 to faciliate this research project.  There is a folder called
30kview which will give an overview of the data

The three databases processed include:
general
forums
hashmapping


First we change some character sets, collations and create a few indexes to enable efficient processing of the data.

Then we create a week mapping table to organize all student activity.  The dates in this will depend upon your course.

After that we run a bunch of queries which transform and join the data into a single table that can be exported and loaded into a statistical analysis program.

Please contact us if you have any questions - 

sbsmiley@mac.com - Steve Miley
whitmer@calstate.edu = John Whitmer 





