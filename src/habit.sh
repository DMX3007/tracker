#!/bin/bash

# debugger
start=`date +%s`

export platform="null";
declare -A activities=(
[127.0.0.1]=0
[anki]=0
[bash]=0 
[code]=0 
[css]=0 
[c++]=0
[c#]=0
[edclub]=0 
[git]=0 
[habr]=0 
[html]=0
[how]=0
[java]=0 
[javascript]=0 
[js]=0
[json]=0
[learn]=0 
[leetcode]=0 
[localhost]=0
[mdn]=0 
[python]=0
[programming]=0 
[q&a]=0
[react]=0
[sql]=0
[script]=0
[software]=0
[shell]=0
[smp]=0 
[study]=0 
[stack]=0
[valid]=0
[vue]=0
[web]=0
[практикум]=0
[хабр]=0
[access]=0
[according]=0
[acquaint]=0
[acquaintance]=0
[action]=0
[activity]=0
[ad]=0
[address]=0
[adhocracy]=0
[advanced]=0
[advertise]=0
[advice]=0
[advise]=0
[agrotechny]=0
[ahpcrc]=0
[aid]=0
[algebra]=0
[algorithm]=0
[allows]=0
[analog]=0
[analysis]=0
[animatronics]=0
[announce]=0
[announcement]=0
[announcer]=0
[annunciatory]=0
[appender]=0
[application]=0
[applications]=0
[applied]=0
[apprise]=0
[app]=0
[architecture]=0
[article]=0
[artifact]=0
[assembler]=0
[asseverate]=0
[assistant]=0
[association]=0
[automation]=0
[available]=0
[awareness]=0
[bachelor]=0
[background]=0
[backward]=0
[based]=0
[basic]=0
[binary]=0
[biocomputing]=0
[biocuration]=0
[bioengineering]=0
[biotechnology]=0
[book]=0
[bot]=0
[brain]=0
[broadcasting]=0
[browser]=0
[bug]=0
[business]=0
[caltech]=0
[cambridge]=0
[capabilities]=0
[card]=0
[center]=0
[circuit]=0
[classify]=0
[clue]=0
[codd]=0
[code]=0
[cognition]=0
[cognizance]=0
[cognizant]=0
[college]=0
[command]=0
[commerce]=0
[commercial]=0
[communication]=0
[companies]=0
[compatible]=0
[compile]=0
[comput]=0
[config]=0
[constate]=0
[consultant]=0
[content]=0
[conversant]=0
[corporation]=0
[cpu]=0
[create]=0
[critical]=0
[cross]=0
[cuneiform]=0
[current]=0
[cutting-edge]=0
[cyber]=0
[data]=0
[datum]=0
[decision]=0
[delay]=0
[denounce]=0
[descriptor]=0
[design]=0
[desk]=0
[desktop]=0
[detection]=0
[develop]=0
[device]=0
[digerati]=0
[digital]=0
[direct]=0
[disabled]=0
[disclosure]=0
[disk]=0
[distribute]=0
[division]=0
[document]=0
[download]=0
[drive]=0
[e-commerce]=0
[economy]=0
[editor]=0
[electroacoustics]=0
[electronic]=0
[enabled]=0
[enables]=0
[enabling]=0
[engine]=0
[engineer]=0
[engineering]=0
[enterprise]=0
[equipment]=0
[erudition]=0
[ethernet]=0
[event]=0
[exabyte]=0
[example]=0
[expansion]=0
[experimental]=0
[expertise]=0
[experts]=0
[explain]=0
[extranet]=0
[extropy]=0
[familiarize]=0
[file]=0
[fill]=0
[firmware]=0
[focus]=0
[focused]=0
[focusing]=0
[for]=0
[format]=0
[foundation]=0
[gearhead]=0
[general]=0
[generalized]=0
[genetic]=0
[get]=0
[groupware]=0
[guidance]=0
[guide]=0
[hackathon]=0
[hard]=0
[hardware]=0
[harvard]=0
[healthcare]=0
[help]=0
[hierarchical]=0
[high]=0
[high-tech]=0
[hostmaster]=0
[hybrid]=0
[ibm]=0
[improve]=0
[incrementor]=0
[info]=0
[inform]=0
[instance]=0
[instant]=0
[institute]=0
[instructive]=0
[intel]=0
[intelligence]=0
[internet]=0
[interpreter]=0
[inter-services]=0
[intranet]=0
[it]=0
[key]=0
[know]=0
[knowledge]=0
[laboratories]=0
[language]=0
[library]=0
[link]=0
[logic]=0
[login]=0
[low-tech]=0
[machine]=0
[mainframe]=0
[make]=0
[malware]=0
[management]=0
[manager]=0
[markup]=0
[materials]=0
[mechanisation]=0
[mechanism]=0
[mechanization]=0
[media]=0
[memory]=0
[message]=0
[messenger]=0
[metadata]=0
[metaknowledge]=0
[metaprogramming]=0
[methods]=0
[microcomputer]=0
[microprocessor]=0
[minicomputer]=0
[miscommunication]=0
[misinformation]=0
[mobile]=0
[model]=0
[modern]=0
[module]=0
[monitor]=0
[multimedia]=0
[multinetwork]=0
[multinetworked]=0
[narrate]=0
[narrater]=0
[narration]=0
[narrative]=0
[net]=0
[network]=0
[networking]=0
[networks]=0
[neurocomputer]=0
[new]=0
[news]=0
[nonprogramming]=0
[notification]=0
[notify]=0
[object]=0
[online]=0
[oracle]=0
[organisation]=0
[organise]=0
[organization]=0
[organize]=0
[path]=0
[performance]=0
[pipe]=0
[planning]=0
[policy]=0
[precomputer]=0
[predicate]=0
[preorganization]=0
[press]=0
[print]=0
[privacy]=0
[procedure]=0
[process]=0
[processing]=0
[processor]=0
[product]=0
[program]=0
[programmable]=0
[programmer]=0
[programming]=0
[programs]=0
[protocol]=0
[provide]=0
[providing]=0
[pseudocode]=0
[publication]=0
[publicize]=0
[publish]=0
[quality]=0
[radar]=0
[radio]=0
[raise]=0
[random-access]=0
[ray]=0
[read]=0
[readable]=0
[readout]=0
[refactorization]=0
[reference]=0
[related]=0
[relational]=0
[relay]=0
[report]=0
[reportedly]=0
[reporter]=0
[research]=0
[resource]=0
[review]=0
[robotics]=0
[scale]=0
[scanner]=0
[schema]=0
[science]=0
[scientific]=0
[screensaver]=0
[search]=0
[section]=0
[security]=0
[self]=0
[semiconductors]=0
[sensitive]=0
[server]=0
[service]=0
[services]=0
[set]=0
[sheet]=0
[site]=0
[slot]=0
[software]=0
[solutions]=0
[source]=0
[sources]=0
[specific]=0
[speed]=0
[spreadsheet]=0
[spyware]=0
[sql]=0
[standard]=0
[store]=0
[stored-program]=0
[story]=0
[stream]=0
[structure]=0
[supercomputer]=0
[support]=0
[switch]=0
[sysadmin]=0
[system]=0
[tally]=0
[tape]=0
[tattle]=0
[techie]=0
[technetronic]=0
[technical]=0
[technological]=0
[technologically]=0
[technologies]=0
[technologist]=0
[technology]=0
[technophile]=0
[technophobia]=0
[telecommunication]=0
[telecommunications]=0
[telecomputer]=0
[teleinstruction]=0
[telemetry]=0
[teletype]=0
[telnet]=0
[text]=0
[theory]=0
[tip]=0
[tool]=0
[tools]=0
[tracking]=0
[transaction]=0
[transistor]=0
[transmission]=0
[tuner]=0
[turing]=0
[unit]=0
[unix]=0
[update]=0
[uploader]=0
[useful]=0
[user]=0
[users]=0
[uses]=0
[using]=0
[utility]=0
[value]=0
[video]=0
[virtualize]=0
[vm]=0
[warfare]=0
[web]=0
[webbook]=0
[webhook]=0
[webform]=0
[website]=0
[word]=0
[xml]=0
)

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
    sleep 0.25s;

    # debug
    export end=`date +%s`
    export runtime=$((end-start))
    echo $runtime

    done

