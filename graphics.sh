

#!/bin/bash
source sources.sh
graph(){
    action=$(yad --width 200 --height 200 --title "SecPLus" \
     --text "Pick an option down below :" \
    --button="List":1 --buttons-layout=spread \
    --button="ChangePwd":2 -buttons-layout=spread \
    --button="decrypt":3 -buttons-layout=spread \
    --button="Save":4 -buttons-layout=spread \
    --button="Version":5 -buttons-layout=spread \
    --button="Help":6 -buttons-layout=spread \ 
)
    case $? in
        1) ./main.sh -l
            ;;
        2) ./main.sh -p
            ;;
        3) ./main.sh -decrypt
            ;;
        4) ./main.sh -s
            ;;
        5) ./main.sh -version
            ;;
        6) ./main.sh -help
            ;;
    esac
}
