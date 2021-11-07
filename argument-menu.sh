#!/bin/bash

###Tool menu###

#variables
PRINTF=/usr/bin/printf
PWD=/bin/pwd
LS=/bin/ls
CD="cd"
CAT=/usr/bin/cat
SLEEP=/bin/sleep
QUIT=0

#start menu
menu(){
    $CLEAR
    $PRINTF "\n"
    $PRINTF " ****Tool Menu System****\n"
    $PRINTF "\n"
    $PRINTF " *To Long list the directory contents, type -l\n"
    $PRINTF " *Display name of current directory, type: -p\n"
    $PRINTF " *To displar the contents of a given file, tye: -c\n"
    $PRINTF " *To change into the current directory, type: -d\n"
    $PRINTF "\n"
    $PRINTF " *To quit this menu system, type: Q or q\n"
    $PRINTF "\n"
    $PRINTF "\n"
    $PRINTF " Enter your choice (please) ==> "
    return

}

#end menu
########################################

#Actual script entry point is here
########################################

while [ $QUIT -eq 0 ] ; do
    menu

    read -r CHOICE
    #change directiry case
    case $CHOICE in
        -d)
            $PRINTF "\n"
            $PRINTF "\n"
            $PRINTF "Please enter a directory name: \n"
            read -r directory_name
            if [[ ! $directory_name ]] ; then
                echo "Error: a directory name was not entered."
                exit 1
            fi
            $CD "$directory_name"
            echo "You are now in $PWD"
            $SLEEP 5
            ;;
        #end change directory case
        #Print working directory case
        -p)
            $PRINTF "\n"
            $PRINTF "\n"
            $PWD
            $SLEEP 5
            ;;
        -l)
            $PRINTF "\n"
            $PRINTF "\n"
            $LS -l
            $SLEEP 5
            ;;
        #End print working directory case
        #cat case
        -c)
            $PRINTF "\n"
            $PRINTF "\n"
            $PRINTF "please enter a fiename: \n"
            read -r filename
            if [[ ! $filename ]] ; then
                echo "Error: a filename was not entered."
                exit 1
            fi
            $CAT "$filename"
            $SLEEP 5
            ;;
        #end cat case
        #Quit case
        [Qq])
            QUIT=1;;
        #End quit case
        #Help case
        ?)
            $PRINTF "\n"
            $PRINTF "\n"
            $PRINTF "Valid options are -l, -p, -c, -d, and Q\n"
            $SLEEP 5;;
        #End help case
    esac

done
