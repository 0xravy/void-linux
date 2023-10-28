kitty --class Record ffmpeg -video_size 1920x1080 -framerate 20 -f x11grab -i :0.0+0,0 -f pulse -ac 2 -i default ~/Videos/records/rec_$(date +"{%d-%m-%y;[%T]}").mp4

