#!/usr/bin/env bash
#!/bin/bash

wallpaper="$HOME/Imágenes/wallpaper/1236174.jpg"


case $1 in

    random)

        aleatory=`find ~/Imágenes/wallpaper -type f | shuf -n 1`

        cp /dev/null ~/.config/i3/scripts/.log-wallpaper

        echo $aleatory > ~/.config/i3/scripts/.log-wallpaper

        feh --bg-fill $aleatory --no-fehbg

    ;;

    delete-log)

        if [ -f ~/.config/i3/scripts/.log-wallpaper ]
        then

            rm ~/.config/i3/scripts/.log-wallpaper

        fi
    ;;

    default)

        if [ -f ~/.config/i3/scripts/.log-wallpaper ]
        then

            log=`cat ~/.config/i3/scripts/.log-wallpaper`

            echo $log > ~/.config/i3/scripts/.log-wallpaper

            feh --bg-fill $log --no-fehbg

        else

            cp /dev/null ~/.config/i3/scripts/.log-wallpaper

            echo $wallpaper > ~/.config/i3/scripts/.log-wallpaper

            feh --bg-fill $wallpaper --no-fehbg

        fi

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
