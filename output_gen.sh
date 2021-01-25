n=0
inp=""
v=0
while getopts "n:i::v" arg; do
  case $arg in
    n)
      n=${OPTARG}
      ;;
    i)
      inp=${OPTARG}
      ;;
    v)
      v=1
      ;;
  esac
done

if [[ $v -eq 0 ]]
then
    for i in $(seq 0 $n);do
        echo "running on ${i}th"
        time cat input/input$(printf "%02d" $i).txt | $inp > output/output$(printf "%02d" $i).txt
    done
else
    echo "verifying"
    for i in $(seq 0 $n);do
        echo "running on ${i}th"
        time cat input/input$(printf "%02d" $i).txt | $inp > output$(printf "%02d" $i).txt
        diff -q output/output$(printf "%02d" $i).txt output$(printf "%02d" $i).txt
        rm output$(printf "%02d" $i).txt
    done
fi