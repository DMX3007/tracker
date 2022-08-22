#!/bin/bash

sec=0;
minutes=0;
hours=0;
currentDate=$(date +%j);
highscore=$(tail -1 ./story.txt | awk {'print $1'});

save_time() {
    printf "$hours\n$minutes" > lasttime.txt
}

get_time() {
    hours=$(tail -2 lasttime.txt | sed '$d');
    minutes=$(tail -1 lasttime.txt);
}

check_date () {
    newDate=$(tail -2 story.txt | sed '$d' | awk '{print $1}');
    if [[ "$currentDate" -eq "$newDate" ]]; then
        get_time
    fi
}

showMessage () {
    notify-send "$@" -i process-completed;
}

showNotificaionMin() {
    if [[ "$1" -eq "$2" && seconds -eq 0 && hours -eq 0 ]]; then
        showMessage "$3"
    fi
}

showNotificaionHour() {
    if [[ "$1" -eq "$2" && minutes -eq 0 && seconds -eq 0 ]]; then
        showMessage "$3"
    fi
}

printout() {
    printf "\nToday work time - $hours hours: $minutes min\n";
    exit
}

declare -A benefits=(
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

# ---- START --------

# ---- GREETINGS ---- 
# notify-send -i dialog-information "Your_last_highscore=$highscore"
check_date
notify-send -i dialog-information "HOURS:$hours MINUTES:$minutes";

trap printout SIGINT
    
while [ 1 ]
    do
    save_time
    currentProgramm=$(xdotool getwindowfocus getwindowname);
    echo "$currentProgramm" >> text.txt
    for key in "${!benefits[@]}";
        do
        sec=`grep -sci "$key" text.txt`
        benefits[$key]=$sec;
    done

    seconds=0;
    for key in "${!benefits[@]}";
        do
        ((seconds+=${benefits[$key]}))
    done
    if [[ $seconds -eq 60 || $seconds -gt 60 ]]; then
        ((minutes+=1));
        sec=0;
        seconds=0;
        cat text.txt >> story.txt
        echo "$currentDate - Current Day of Year" >> story.txt
        echo "$highscore - High score" >> story.txt
        rm text.txt
    fi
    if [[ $minutes -eq 60 ]]; then 
        ((hours+=1));
        minutes=0;
        if [[ $highscore < $hours ]]; then
            highscore=$hours;
            notify-send -i software-update-available
        fi
    fi

    showNotificaionMin $minutes 1 "$flag1"
    showNotificaionMin $minutes 5 "$flag5"
    showNotificaionMin $minutes 15 "$flag15"
    showNotificaionMin $minutes 30 "$flag30"
    showNotificaionMin $minutes 45 "$flag45"
    showNotificaionHour $hours 1 "$flag1h"
    showNotificaionHour $hours 2 "$flag2h"
    showNotificaionHour $hours 3 "$flag3h"
    showNotificaionHour $hours 4 "$flag4h"
    showNotificaionHour $hours 5 "$flag5h"
    showNotificaionHour $hours 6 "$flag6h"
    showNotificaionHour $hours 7 "$flag7h"
    showNotificaionHour $hours 8 "$flag8h"
    showNotificaionHour $hours 9 "$flag9h"
    showNotificaionHour $hours 10 "$flag10h"
    showNotificaionHour $hours 11 "$flag11h"
    showNotificaionHour $hours 12 "$flag12h"
    showNotificaionHour $hours 13 "$flag13h"
    showNotificaionHour $hours 14 "$flag14h"
    showNotificaionHour $hours 15 "$flag15h"
    showNotificaionHour $hours 16 "$flag16h"
    showNotificaionHour $hours 17 "$flag17h"
    showNotificaionHour $hours 18 "$flag18h"
    showNotificaionHour $hours 19 "$flag19h"
    showNotificaionHour $hours 20 "$flag20h"
    showNotificaionHour $hours 21 "$flag21h"
    showNotificaionHour $hours 22 "$flag22h"
    showNotificaionHour $hours 23 "$flag23h"
    showNotificaionHour $hours 24 "$flag24h"

# ---- CONTENT OF NOTIFICATION ----
flag1="🔥🔥🔥 GREAT_START 🔥🔥🔥";
flag5="🥉🥉🥉 #𝟱 MIN# 🥉🥉🥉"; 
flag15="🥈🥈🥈 #15 MIN# 🥈🥈🥈";
flag30="🥇🥇🥇 #30 MIN# 🥇🥇🥇";
flag45="🏅🏅🏅 #45 MIN# 🏅🏅🏅";
flag1h="🎯 REACH FIRST HOUR 🎯";
flag2h="🖥💻 TRUE NERD 2 HOURS 💻🖥";
flag3h="🚩🚩🚩 WOW WOW WOW 3 🚩🚩🚩";
flag4h="📈 -- THIS IS 4 HOURS -- 📈";
flag5h="🧗🏃 -- KEEP GOING 5 -- 🏃🧗";
flag6h="🔴 -- DON'T GIVE UP 6-- 🔴";
flag7h="☯☯☯ --- STAY STRONG 7--- ☯☯☯";
flag8h="🏁🏆🏁 --- 🎱YOU DID IT!🎱 --- 🏁🏆🏁";
flag9h="❕❔❓-- STILL HERE 9--❓❔❕";
flag10h="👀 -- UNBELIEVABLE 10-- 👀 ";
flag11h="🇰🇷--- 11 HOURS --- 🇰🇷";
flag12h="🔴🟠🟡 12 🟣🔵🟢";
flag13h="💲💲💲 YOU WILL EARN A LOT OF MONEY 💲💲💲";
flag14h="💎💎💎 ===BRILIANT=== 💎💎💎";
flag15h="✅✅✅ 15 HOURS IS'T ENOUGH ✅✅✅";
flag16h="🆘🆘🆘 PLEASE! ANYBODY STOP HIM!!! 🆘🆘🆘";
flag17h="💪 === STRONG === 💪";
flag18h="🦾🦿🤖 = YOU'RE MACHINE = 🤖🦿🦾";
flag19h="🧠 === MEGA-BRAIN === 🧠";
flag20h="🆙 -- WHO CAN STOP YOU? -- 🆙";
flag21h="🔴 -- NO ONE -- 🔴";
flag22h="♿♿♿ DISABLED STARTS TO WALK ♿♿♿";
flag23h="🛐🛐🛐 PEOPLE START TO PILIGRIMAGE TO YOU 🙏🙏🙏";
flag24h="☯ -- YOU ARE NEW GOD -- ☯";
# echo $seconds $minutes $hours
    sleep 1s;
    done
