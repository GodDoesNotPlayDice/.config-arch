intervals=10
while true; do
    dir=~/lwalpapers/wallpapers
    numbers=$(ls $dir | grep -oP 'b-\K\d+')
    random_number=$(echo "$numbers" | shuf -n 1)

    swww img -o LVDS-1 $dir/b-$random_number.jpg --transition-duration 3 --transition-type grow --transition-pos bottom-right

    sleep $intervals
done