# Task 7

# Task 7.2

I've created file script for analize apache log file and use in it next commands:

> awk '{print $1}' $1 | sort | uniq -c | sort -gr 

> awk '{print $7}' $1 | sort | uniq -c | sort -gr 

> awk '{print $1 " : " $7}' $1 | grep 'error404' | sort | uniq -c | sort -gr 

> awk '{ print $4}' $1 | awk -F : '{ print $2 ":" $3}' | sort | uniq -c | sort -gr 

> awk '{ print $14 " \t " $1}' $1 | grep -i 'bot' | sort | uniq -c | sort -gr 

![Link to 7.2](task7.2/task7.2-script-result.jpg)