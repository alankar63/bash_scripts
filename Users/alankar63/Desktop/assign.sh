#!/bin/bash
set_color ()
{
    tput setaf 2
    return 0
}

reset_color()
{
    tput sgr0
    return 0

}

set_color
echo  "user's name:"
reset_color
echo  `whoami`

set_color
printf "\n"
echo  date
reset_color
echo `date`

printf "\n"
set_color
echo "number of logged in users: "
reset_color
echo `who|wc -l`

printf "\n"
tput setaf 2
echo  calender
reset_color
cal

printf "\n"
set_color
echo physical memory
reset_color
echo `top -l1|grep PhysMem`

printf "\n"
set_color
echo cpu usage
tput sgr0
echo `top -l1|grep "CPU usage"`

printf "\n"
set_color
echo disk usage
reset_color
df |tr -s " "|cut -d ' ' -f 1,3,4 > out.txt
column -t out.txt

printf "\n"
set_color
echo number of processes under current user
reset_color
top -l1 -U $USER | grep  Process


