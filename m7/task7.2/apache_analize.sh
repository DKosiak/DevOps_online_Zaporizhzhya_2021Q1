#!/bin/bash
file_out1=result_1.log
file_out2=result_2.log
file_out4=result_4.log
file_out5=result_5.log
file_out6=result_6.log

# requests form unique ip and show were the most requests 
awk '{print $1}' $1 | sort | uniq -c | sort -gr > $file_out1
# the most requested page
awk '{print $7}' $1 | sort | uniq -c | sort -gr > $file_out2
# non-existen pages was requested
awk '{print $1 " : " $7}' $1 | grep 'error404' | sort | uniq -c | sort -gr > $file_out4
# time did site get most requests
awk '{ print $4}' $1 | awk -F : '{ print $2 ":" $3}' | sort | uniq -c | sort -gr > $file_out5
# UA + IP
awk '{ print $14 " \t " $1}' $1 | grep -i 'bot' | sort | uniq -c | sort -gr > $file_out6

{
read line1
}<$file_out1
echo "IP with most request : $line1"

{
read line1
}<$file_out2
echo "The most requested page:  $line1"

echo "Non-existent pages requested from:"
cat $file_out4 | head -n 10

echo "What time did site get the most requests?"
cat $file_out5 | head -n 10

echo "Bots UA+IP"
cat $file_out6



