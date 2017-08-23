#!/bin/bash

# backlight brightness controls. use freely
# and adjust sysfs directory if not on intel
# $author  praveen reddy gorla

sysfs="/sys/class/backlight/intel_backlight"
max=`cat ${sysfs}/max_brightness`
level=`cat ${sysfs}/brightness`


usage()
{
script=${0##*/}
echo
echo "Invalid usage of ${script}!"
echo "  $1"
echo "####### Hello $USER, use the folowing to control the brightness level ##########"
echo "$script current : Shows present brightness level with a max brightness level of  $max "
echo "$script increase     : increases brightness"
echo "$script decrease   : decreases brightness"
echo "$script set #  : sets brightness to an Integer "
echo "########################################################################"
echo


exit 1
}

set_brightness()
{

level=$1

if [ $level -lt 1 ] ; then
 level=1
echo minimum  brightness level is $level
elif [ $level -gt $max ] ; then
 level=$max
echo maximum brightness level accepted is $level
fi
 
echo $level > $sysfs/brightness 
}

case "$1" in
   current)
    let "level=level"
    echo current brightness level as of on $(date +"%T") is $level
;; 
  increase)
    let "level+=1"
    set_brightness $level 
    echo brightness levelset to $level
    ;;
  decrease)
    let "level-=1"
    set_brightness $level
    echo brightness levelset to $level 
    ;;
  set)
    if [[ ! $2 =~ ^[[:digit:]]+$ ]]; then
     usage " $USER please input an integer"
    fi

    set_brightness $2
    echo brightness levelset to $level
    ;;
  *)
    usage "invalid argument, Make a valid one among the following"
esac
