FILENAME=/home/stephen/searchengine.tar
#echo ${FILENAME%/*}
#echo ${FILENAME%%/*}
#echo ${FILENAME#*/}
#echo ${FILENAME##*/}

echo ${FILENAME/home/office}
echo ${FILENAME//s/S}


