n_list=(2 100 1000 100000 555050)
for i in ${!n_list[@]}; do
    echo "generating ${i}th"
    python3 generator.py ${n_list[$i]} > input/input$(printf "%02d" $i).txt
done