#!/bin/bash

for ((a=1; a<=5; a++));
do
mkdir $a
cd $a

for ((b=1; b<=10; b++));
do
mkdir $b
cd $b

for ((c=1; c<=20; c++));
do
touch $c
done 
cd ..
done
cd ..
done

