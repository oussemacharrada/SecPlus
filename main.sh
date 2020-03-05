#!/bin/bash
source graphics.sh
red=$(tput setaf 1)
reset=$(tput sgr0)
green=$(tput setaf 2)
if [[ $# -eq 0 ]]; then
    echo -e "${red}error: ${reset}No options provided.. Please enter an option!"
    echo -e "${green}-help ${reset}or ${green}-h ${reset} to see manual\n"
else
    declare -a arr=()
    #parse the arguments
    for ((i = 0; i <= $#; i++)); do
        arr+=($@ "$t")
    done
    for ((i = 0; i <= $# - 1; i++)); do
        case ${arr[$i]} in
        -v)
            version
            ;;
        -version)
            version
            ;;
        -p)
            pwdchange
            ;;
        -l)
            list
            ;;
	-list)
            list
            ;;
        -decrypt)
            decrypt
            ;;
        -save)
            save
            ;;
	-s)
            save
            ;;        
	-g)
            graph
            ;;
         -gui)
            graph
            ;;
        -h)
            usage
            ;;
        -help)
            usage
            ;;
        *)
            echo "This option is not available atm"
            ;;
        esac
    done
fi
