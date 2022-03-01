#!/usr/bin/env bash
#!/bin/bash
log=`cat ~/.config/i3/scripts/.log-wallpaper`

wallpaper="$HOME/Imágenes/wallpaper/test-wall.png"

case $1 in

    random)
        aleatory=`find ~/Imágenes/wallpaper -type f | shuf -n 1`
        cp /dev/null ~/.config/i3/scripts/.log-wallpaper
        echo $aleatory > ~/.config/i3/scripts/.log-wallpaper
        feh --bg-fill $aleatory --no-fehbg
    ;;

    default)
        cp /dev/null ~/.config/i3/scripts/.log-wallpaper
        echo $wallpaper > ~/.config/i3/scripts/.log-wallpaper
        feh --bg-fill $wallpaper --no-fehbg
    ;;


    center)
        feh --bg-center $log --no-fehbg
    ;;

    extended)
        feh --bg-fill $log --no-fehbg
    ;;

    max)
        feh --bg-max $log --no-fehbg
    ;;

    scale)

        feh --bg-scale $log --no-fehbg
    ;;

    repeat)

        feh --bg-tile $log --no-fehbg
    ;;


    *)
        echo "No aplica el valor ingresado"

    ;;

esac
