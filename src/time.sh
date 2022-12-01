set_time() {
    printf "$currentDate\n$highscore\n$hours\n$minutes\n" > config.txt
}

get_time() {
    hours=$(tail -2 config.txt | sed '$d');
    minutes=$(tail -1 config.txt);
}

export -f set_time
export -f get_time