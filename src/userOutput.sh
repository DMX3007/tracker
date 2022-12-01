
showMessage () {
    notify-send -i "$1" "$2";
}

showNotificaionMin() {
    if [[ "$1" -eq "$2" && seconds -eq 0 && hours -eq 0 ]]; then
        showMessage "$3" "$4"
    fi
}

showNotificaionHour() {
    if [[ "$1" -eq "$2" && minutes -eq 0 && seconds -eq 0 ]]; then
        showMessage "$3" "$4"
    fi
}

printOut() {
    printf "\nToday work time - $hours hours: $minutes min\n";
    date=$(date)
    echo \""WORK_STOP"\"\:\""$date"\" >> story.txt
    echo >> story.txt
    notify-send -i dialog-information "Today work time HOURS:$hours MINUTES:$minutes";
    exit
}

export -f showMessage
export -f showNotificaionMin
export -f showNotificaionHour
export -f printOut

showNotificaionMin $minutes 1 "start-here" "$flag1" 
showNotificaionMin $minutes 5 "face-wink" "$flag5"
showNotificaionMin $minutes 15 "face-smirk" "$flag15" 
showNotificaionMin $minutes 30 "face-cool" "$flag30" 
showNotificaionMin $minutes 45 "face-angel" "$flag45" 
showNotificaionHour $hours 1 "face-confused" "$flag1h" 
showNotificaionHour $hours 2 "face-glasses" "$flag2h" 
showNotificaionHour $hours 3 "emote-love" "$flag3h" 
showNotificaionHour $hours 4 "face-devilish" "$flag4h" 
showNotificaionHour $hours 5 "face-laugh" "$flag5h" 
showNotificaionHour $hours 6 "face-smile-big" "$flag6h" 
showNotificaionHour $hours 7 "face-surprise" "$flag7h" 
showNotificaionHour $hours 8 "emblem-default" "$flag8h" 
showNotificaionHour $hours 9 "face-surprise" "$flag9h" 
showNotificaionHour $hours 10 "network-idle" "$flag10h" 
showNotificaionHour $hours 11 "network-idle" "$flag11h" 
showNotificaionHour $hours 12 "network-idle" "$flag12h" 
showNotificaionHour $hours 13 "network-idle" "$flag13h" 
showNotificaionHour $hours 14 "network-idle" "$flag14h" 
showNotificaionHour $hours 15 "network-idle" "$flag15h" 
showNotificaionHour $hours 16 "network-idle" "$flag16h" 
showNotificaionHour $hours 17 "network-idle" "$flag17h" 
showNotificaionHour $hours 18 "network-idle" "$flag18h" 
showNotificaionHour $hours 19 "network-idle" "$flag19h" 
showNotificaionHour $hours 20 "network-idle" "$flag20h" 
showNotificaionHour $hours 21 "network-idle" "$flag21h" 
showNotificaionHour $hours 22 "network-idle" "$flag22h" 
showNotificaionHour $hours 23 "network-idle" "$flag23h" 
showNotificaionHour $hours 24 "network-idle" "$flag24h" 

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
