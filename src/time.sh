set_time() {
    printf "$hours\n$minutes" > lasttime.txt
}

get_time() {
    hours=$(tail -2 lasttime.txt | sed '$d');
    minutes=$(tail -1 lasttime.txt);
}

export -f set_time
export -f get_time