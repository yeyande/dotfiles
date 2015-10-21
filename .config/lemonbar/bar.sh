FIFO=~/.config/lemonbar/bar.fifo
rm -f $FIFO
mkfifo $FIFO

read_messages() {
    read -t 1 contents <>$FIFO
    echo -n $contents
}

while true; do
    irssi="%{c}%{Fwhite}%{A:sh clear_notifications.sh:}$(read_messages)%{A}"
#    echo "%{c}%{Fwhite}%{A:sh clear_notifications.sh:}$(read_messages)%{A}%{r}%{Flightblue}%{A:dm-tool switch-to-greeter:}Switch User%{A}"
#    echo "%{c}%{Fwhite}%{A:sh clear_notifications.sh:}$(read_messages)%{A}%{r}%{Flightblue}$(date '+%d %b %H:%M')"

    date="%{r}%{Flightblue}$(date '+%d %b %H:%M')"
    echo "$irssi$date"
done

