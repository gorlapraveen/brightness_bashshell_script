<<<<<<< HEAD
#!/bin/bash

# backlight brightness controls. use freely
# and adjust sysfs directory if not on intel
# $author  praveen reddy gorla

=======

#!/bin/bash
# backlight brightness controls. use freely
# and adjust sysfs directory if not on intel


#copyright (c) 2016 Author(s): Gorla Praven <gorlapraveen@gmail.com>
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or (at your option) any later version.This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#You should have received a copy of the GNU General Public License  along with this program.  If not, see <https://www.gnu.org/licenses/>.
    
>>>>>>> 5627e17aa2a0d4e15601fa8e5ec04d42882c9535
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
<<<<<<< HEAD
=======
echo "$script nightmmode : Nightmode"
echo "$script daymode : Daymode"
>>>>>>> 5627e17aa2a0d4e15601fa8e5ec04d42882c9535
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
<<<<<<< HEAD
=======
 nightmode)
   let "level=65"
   set_brightness $level
   NM=1
   DM=0
   echo Working on Night Mode
   ;;
 daymode)
   let "level=712"
   set_brightness $level
   NM=0
   DM=1
  echo Working on Day Light Mode
 ;;
>>>>>>> 5627e17aa2a0d4e15601fa8e5ec04d42882c9535
  set)
    if [[ ! $2 =~ ^[[:digit:]]+$ ]]; then
     usage " $USER please input an integer"
    fi

    set_brightness $2
    echo brightness levelset to $level
    ;;
  *)
<<<<<<< HEAD
    usage "invalid argument, Make a valid one among the following"
=======
  usage "invalid argument, Make a valid one among the following"
>>>>>>> 5627e17aa2a0d4e15601fa8e5ec04d42882c9535
esac
