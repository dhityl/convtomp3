#!/bin/bash


for file in *.flac;
do
	filename="${file%.*}"

	ffmpeg -i "$file" -ab 320k -map_metadata 0 -id3v2_version 3 "$filename.mp3"

	if [[ "$1" == "-d" ]];
	then
		rm "$file"
	fi
done



# ffmpeg command: 
# ffmpeg -i input.flac -ab 320k -map_metadata 0 -id3v2_version 3 output.mp3
