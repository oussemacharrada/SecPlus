#!/bin/bash

decrypt(){
green=$(tput setaf 2)
reset=$(tput sgr0)
echo "Type the user that you want to decrypt his password ,followed by [ENTER]:"

read username

unshadow /etc/passwd /etc/shadow > pass
echo "${green}unshadowing files... ${reset}"

john --users=$username pass
echo "${green}decrypting files... ${reset}"

john --show --shells=-expired pass
echo "${green}done ${reset}"

}
