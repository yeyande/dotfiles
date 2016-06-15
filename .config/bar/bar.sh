#!/bin/sh
FIELDIFS=':'
source $(dirname $0)/panel_config
DIVIDER="%{B$LIGHT_GRAY} %{B-}"
logout="$(printf '%b' "\ue00d")"
system_buttons="$logout"
while read -r line; do
    case $line in
        L*)
            kblayout="${line#?}" ;;
#       A*)
#           audio="${line#?}"
#           set -- ${line#?}
#           while [ $# -gt 0 ] ; do
#               item=$1
#               case $item in
#                   Simple mixer control *)
#                       IFS=','
#                       name=${item#?}
#                       case $name in
#                           PCM) audio_icon="$(printf '%b' "\ue04d")" ;;
#                           Master)
#                               amixer=$(amixer sget Master |tail 1)
#               esac
#           done
#           ;;
        C*)
            clock="${line#?}" ;; 
        W*)
            wm_infos=""
            IFS=$FIELDIFS
            set -- ${line#?}
            while [ $# -gt 0 ] ; do
                item=$1
                case $item in
                    [oOFfUu]*)
                        name=${item#?}
                        case $name in
                            1) DESK_ICON="" ;;
                            2) DESK_ICON="" ;;
                            3) DESK_ICON="" ;;
                            4) DESK_ICON="" ;;
                            5) DESK_ICON="" ;;
                        esac
                    case $item in
                        O*)
                            desk="%{F$LIGHT_BLUE}$DESK_ICON $(printf '%b' "\ue056")%{F-}"
                            ;;
                        F*)
                            desk="%{F$LIGHT_BLUE}$DESK_ICON $(printf '%b' "\ue056")%{F-}"
                            ;;
                        U*)
                            desk="%{F$YELLOW}$DESK_ICON $(printf '%b' "\ue056")%{F-}"
                            ;;
                        o*)
                            desk="%{F$LIGHT_BLUE}$DESK_ICON $(printf '%b' "\ue0e6")%{F-}"
                            ;;
                        f*)
                            desk="%{F$LIGHT_GRAY}$DESK_ICON $(printf '%b' "\ue0e6")%{F-}"
                            ;;
                        u*)
                            desk="%{F$YELLOW}$DESK_ICON $(printf '%b' "\ue056")%{F-}"
                            ;;
                    esac
                    wm_infos="${wm_infos}%{A:bspc desktop -f ${name}:}${desk}%{A} "
                    ;;
                esac
                shift
            done
            ;;
        esac
    printf "%s\n" "%{l B$DARK_GRAY} $wm_infos %{B-}$DIVIDER%{r} $kblayout $DIVIDER%{B$DARK_GRAY} $clock $DIVIDER %{B$DARK_GRAY}$system_buttons"
done
