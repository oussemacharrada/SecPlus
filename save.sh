#!/bin/bash

save(){
green=$(tput setaf 2)
reset=$(tput sgr0)
john --show --shells=-expired pass >> password.txt

echo "${green}all password saved successfully${reset}"
}
