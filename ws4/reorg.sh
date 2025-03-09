<<<<<<< HEAD
<<<<<<< HEAD
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
=======
=======
>>>>>>> f547ecec229ccaef3baa6e729411b53613a33707
# By: Mohammed Nassar
# Date: Mar 8, 2025
# CS131 WS4

#!/bin/bash

# timestamp variable that contains the current timestamp
timestamp=$(date "+%F-%T")

# Extract header row
header=$(head -n 1 2019-01-h1.csv)

# Loop over the vendorid
for vendorid in 1.0 2.0 4.0; do
	# Create a separate file for each id
	outputfile="${timestamp}-${vendorid}.csv"

	# Write the header
	echo "$header" > "$outputfile"

	# Append rows that matches vendorid
	grep "^$vendorid," 2019-01-h1.csv >> "$outputfile"

	# Add all files into .gitignore
	echo "$outputfile" >> /home/mnassar_personal/cs131/.gitignore
<<<<<<< HEAD
done
>>>>>>> mo
=======
done
>>>>>>> f547ecec229ccaef3baa6e729411b53613a33707
