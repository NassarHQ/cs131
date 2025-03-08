#!/bin/bash
z=2
while [ $z -lt 6 ]
do 
	echo $z
	z=`expr $z + 1`
done

for var in 2 4 5 8
do
echo $var
done

echo "No of arguments is $#"
echo "Name of the script is $0"
echo "First argument is $1"
echo "Second argument is $2"

#Syntax 1
b=$(pwd)
c=`pwd`
echo $b
echo $c
d=$(ls /bin | grep bash)
echo $d
