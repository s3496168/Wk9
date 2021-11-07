#!/bin/bash

#variables
PRINTF=/usr/bin/printf
LS=/bin/ls
PWD=/bin/pwd
SLEEP=/bin/sleep
QUIT=0

#start menu
menu(){
    $CLEAR
    $PRINTF "\n"
    $PRINTF " User Menu System\n"
    $PRINTF "\n"
    $PRINTF " 1) Say hello\n"
    $PRINTF " 2) Display name of current directory\n"
    $PRINTF " 3) List current directory contents\n"
    $PRINTF " 4) Say goodbye\n"
    $PRINTF "\n"
    $PRINTF " Q) Quit this menu system\n"
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
    case $CHOICE in
        1)
            $PRINTF "\n"
            $PRINTF "\n"
            $PRINTF "Hello World\n"
            $SLEEP 3
            ;;
        2)
            $PRINTF "\n"
            $PRINTF "\n"
            $PWD
            $SLEEP 3
            ;;
        3)
            $PRINTF "\n"
            $PRINTF "\n"
            $LS
            $SLEEP 3
            ;;

        4)
            $PRINTF "\n"
            $PRINTF "\n"
            $PRINTF "....and that's goodbye from me\n"
            $SLEEP 3
            ;;
        [Qq])
            QUIT=1;;
        ?)
            $PRINTF "\n"
            $PRINTF "\n"
            $PRINTF "Valid options are 1, 2, 3, 4, and Q\n"
            $SLEEP 3;;
    esac

done





