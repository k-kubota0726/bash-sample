#!/bin/bash

#ログ出力先のディレクトリを作成
DIR="./log"
if [ ! -d $DIR ]
then
    mkdir $DIR
else
    echo "Directory $DIR already exists."
fi

#ログファイルを作成
FILE="$DIR/log.txt"

for ((i=1; i<=10; i++))
do
    TODAY=`data'+%Y-%m-%d %H:%M:%S`
    echo "$TODAY Log Write $i!!!" >> $FILE
    sleep 5
done


