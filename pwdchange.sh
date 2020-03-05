#!/bin/bash
pwdchange(){
echo "Type the user that you want to change his password ,followed by [ENTER]:"

read username

echo "Now enter the new user password"

passwd $username
}
