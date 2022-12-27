#!/bin/bash
print_stdout_withcolor()
{  
   COLOR_TYPE=$1
   COLOR_TYPE=`echo $COLOR_TYPE | tr [A-Z] [a-z]`
   TextString=$2
   case $COLOR_TYPE in
	   black) 
               COLOR_INDEX=30
		   ;;
	   red) 
               COLOR_INDEX=31
		   ;;
	   green) 
               COLOR_INDEX=32
		   ;;
	   yellow) 
               COLOR_INDEX=33
		   ;;
	   blue) 
               COLOR_INDEX=34
		   ;;
	   magenta) 
               COLOR_INDEX=35
		   ;;
	   cyan) 
               COLOR_INDEX=36
		   ;;
	   white) 
               COLOR_INDEX=37
		   ;;
	   reset) 
               COLOR_INDEX=0
		   ;;
	   *) 
               echo "invalid parameter"
	       exit 1
		   ;;
   esac

   echo -e "\e[1;${COLOR_INDEX}m${TextString}\e[0m"
}

