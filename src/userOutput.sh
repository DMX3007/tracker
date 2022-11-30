
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

printOut() {
    printf "\nToday work time - $hours hours: $minutes min\n";
    exit
}

export -f showMessage
export -f showNotificaionMin
export -f showNotificaionHour
export -f printOut
