#!/bin/bash


cp "../../submissions/$1" .
unzip $1
find . -name "*.bash" -exec mv -t . {} +
find . -name "queries.log" -exec mv -t ./data/. {} +

sed -i "s|dir|data|g" *.bash


echo "creating dirs..."
cp -r ../../data .
cp -r ../../input .


echo "suspending for 1s"
sleep 1

echo "running scripts..."
bash assign1.bash < ./input/1a_1input.txt 
bash assign1.bash < ./input/1a_2input.txt
bash assign1.bash < ./input/1a_3input.txt


echo "file diffs..."
diff ./data/1111.item ../../solution/data/1111.item
diff ./data/3293.item ../../solution/data/3293.item
diff ./data/3333.item ../../solution/data/3333.item
diff ./data/5430.item ../../solution/data/5430.item
diff ./data/5555.item ../../solution/data/5555.item
diff ./data/7777.item ../../solution/data/7777.item

echo "suspending for 1s"
sleep 1

find . -name "queries.log" -exec mv -t ./data/. {} +
echo "queries.log diffs..."
diff <(sed 's|\[.*\]||' ./data/queries.log) <(sed 's|\[.*\]||' ../../solution/data/queries.log)


echo "..all done!"

rm -rf *
cp ../grade.bash .
