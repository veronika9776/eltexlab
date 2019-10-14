#!/bin/bash
echo "Выбирите количество создаваемых папок"
read x
for ((a=1; a<=$x; a++));
do
echo "Введите название для папки" $a
read name
mkdir $name
done

echo -n "Cоздать еще файл или директорию? (y/n) "
read item
case "$item" in	
n|N)
exit 0
;;
y|Y)
;;
*)
;;
esac
ls

echo "Введите название папки в которой будет сознан новый файл"
read f
cd $f

echo -n "Cоздать файл или каталог? (f/d) "

read item
case "$item" in
f|F) echo "Выбирите количество создаваемых файлов"
read x
for ((a=1; a<=$x; a++));
do
echo "Введите название для файла $a"
read name
touch $name
done
 ;;
d|D) echo "Выбирите количество создаваемых папок"
read x
for ((a=1; a<=$x; a++));
do
echo "Введите название для папки" $a
read name
mkdir $name
done
;;
*)
;;
esac


