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
done