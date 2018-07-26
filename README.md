# brightness_bashshell_script
A simple bash script for linux to increase brightness, decrease brightness, set brightnes, current brightnes,nightmode and daymode by running the commands in your terminal.
For example as a root user run : "backblacklight nightmode" in your terminal for nightmode


Intallation : run the following commands in your linux terminal for cloning and installation
===============================================================================

         git clone https://gitlab.com/gorlapraveen/brightness_bashshell_script.git

         cd brightness_bashshell_script
         ./setup.sh


Usage After Installation:

==============================================================================

run                : backlight [commands] [options] 

     [command]

            current    : Shows present brightness level within the max brighness level
            increase   : increases brightness"
            decrease   : decreases brightness" 
            set        : sets brightness to an Integer "
            nightmmode : Nightmode"
            daymode    : Daymode"

     [options]         : input integers form 1 to maximum brightness"

Example usage

           :'backlight increase' to increase brightness by one level"

Example usage

           :'backlight set 300' to set brightness level to 300 in range of 1 to maximum brightness"

Developed and Contributed by: 
            Gorla Praveen


