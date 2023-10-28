#!/bin/zsh

count=1
rm -rf README.md
echo $(ls ./images | wc -l)

for file in ./images/*.{jpg,png}; do
    extension="${file##*.}" # Extract the file extension
    new_name="$count.$extension" # Create the new filename with the same extension
    if [ ! -f $new_name ]; then 
        mv "$file" "./images/$new_name"
        echo $count
    fi
    echo "$count." >> README.md
    echo '<div align="center">' >> README.md
    echo '    <img src="./'"$new_name"'" height="360" width="640" />' >> README.md
    echo '</div>' >> README.md
    count=$((count+1))
done
