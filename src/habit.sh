#!/bin/bash

export sec=0;
export minutes=0;
export hours=0;
export platform="null";
declare -A activities=(
[anki]=0 
[bash]=0 
[code]=0 
[css]=0 
[edclub]=0 
[git]=0 
[habr]=0 
[html]=0 
[javascript]=0 
[js]=0 
[learn]=0 
[leetcode]=0 
[mdn]=0 
[programming]=0 
[react]=0 
[smp]=0 
[study]=0 
[stack]=0 
[практикум]=0)

export currentDate=$(date +%j);
export highscore=$(tail -1 ./userData.txt | awk {'print $1'});

check_date () {
    newDate=$(tail -2 userData.txt | sed '$d' | awk '{print $1}');
    if [[ "$currentDate" -eq "$newDate" ]]; then
        source ./time.sh
        get_time
    fi
}

declare -A keyWords=(
[Mozilla Firefox]="WEB"
[Google Chrome]="WEB"
[earielle@earielleDesc]="PC"
[Visual Studio Code]="PC")


# ---- GREETINGS ---- 
notify-send -i dialog-information "Highscore is $highscore"
check_date

source ./userOutput.sh
trap printOut SIGINT

quit=1
    
while [ quit ]
    do
    source ./time.sh
    set_time

    currentActivity=$(xdotool getwindowfocus getwindowname);

    for key in "${!keyWords[@]}"; 
        do
        if [[ "$currentActivity" == *"$key"* ]]; then
            platform="${keyWords[$key]}"
        fi
    done

    echo \""$platform"\"\:\""$currentActivity"\" >> text.txt
    platform="";


    for key in "${!activities[@]}";
        do
        sec=`grep -sci "$key" text.txt`  # Check if this activity inside array
        activities[$key]=$sec;
    done
    
    seconds=0;
    
    for key in "${!activities[@]}";
        do
        ((seconds+=${activities[$key]}))
    done

    
    if [[ $seconds -eq 60 || $seconds -gt 60 ]]; then
        ((minutes+=1));
        sec=0;
        seconds=0;
        cat text.txt >> story.txt
        echo "$currentDate" > userData.txt
        echo "$highscore" > userData.txt
        rm text.txt
    fi
    
    if [[ $minutes -eq 60 || $minutes -gt 60 ]]; then 
        ((hours+=1));
        minutes=0;
        if [[ $highscore < $hours ]]; then
            highscore=$hours;
            notify-send -i software-update-available
        fi
    fi

    source ./userOutput.sh

    sleep 0.99s;
    done
