declare -a ARY
declare -A MAP
MAP+=([a]=1 [b]=2)
ARY+=(a b c)

echo ${ARY[1]}
echo ${MAP[a]}
echo "${ARY[@]}"
echo "${MAP[@]}"
echo "${ARY[@]:0:1}"
echo ${#ARY[@]}
echo ${!MAP[@]}

ARY[4]=a
echo ${ARY[@]}
echo ${ARY[3]}
