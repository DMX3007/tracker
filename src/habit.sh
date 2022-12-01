#!/bin/bash

export platform="null";
declare -A activities=(
[127.0.0.1]=0
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
[json]=0
[q & a]=0
[valid]=0
[learn]=0 
[leetcode]=0 
[mdn]=0 
[programming]=0 
[react]=0 
[smp]=0 
[study]=0 
[stack]=0
[хабр]=0
[практикум]=0)

export sec=0;
export minutes=0;
export hours=0;
export highscore=$(head -2 config.txt | sed '1d');
export currentDate=$(date +%j);
export newDate=$(head -1 config.txt);

check_date () {
    if [[ "$currentDate" -eq "$newDate" ]]; then
        source ./time.sh
        date=$(date)
        echo \""WORK_START"\"\:\""$date"\", >> story.txt
        get_time
    else
        echo "change date"
        date=$(date)
        echo \""WORK_START"\"\:\""$date"\", >> story.txt
        source ./time.sh
        set_time
    fi
}

declare -A keyWords=(
[mozilla firefox]="WEB"
[google chrome]="WEB"
[earielle@earielledesc]="PC"
[visual studio code]="PC")

# ---- GREETINGS ---- 
notify-send -i dialog-information "Highscore is $highscore"
check_date

source ./userOutput.sh
trap printOut SIGINT

quit=1
    
while [ quit ]
    do

    currentActivity=$(xdotool getwindowfocus getwindowname | tr '[:upper:]' '[:lower:]');
    echo $currentActivity

    for key in "${!keyWords[@]}"; 
        do
        if [[ "$currentActivity" == *"$key"* ]]; then
            platform="${keyWords[$key]}"
        fi
    done

    echo \""$platform"\"\:\""$currentActivity"\", >> text.txt
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
    source ./time.sh
    set_time
    sleep 0.9999999999999999999999999999999999s;
    done
