# By: Mohammed Nassar
# April 6, 2025
# CS-131
# a3-25sp

# This script processes grades.csv
# prints student totals, averages, status, and top/bottom students.

# User defined function
# Calcualtes the AVG of scores
function calculateAverage(total, numGrades){
	return total / numGrades
}

BEGIN {
	FS = "," # Set field separator to comma so we don't use -F in the command
}

# Skip header line 
NR == 1 { next }
{
	# Storing student total grades in associative array
        for (i = 3; i <= NF; i++) {
                arr[$2] += $i
        }
}

# Calculate average and determine student status if (PASS or FAIL)
END {
	# Initialize minimum with something big for comparisons
	min = 9999999

	for (student in arr) {
		
		# Check the highest total grade
		if (arr[student] > max) {
			max = arr[student]
			topStudent = student
		}

		# Check the lowest total grade
		if (arr[student] < min) {
			min = arr[student]
			bottomStudent = student
		}
	
		# Compute average of grades for each student
		average = calculateAverage(arr[student], 3)

		# Above or equal 70 : PASS
		if (average >= 70) {
			status = "PASS"
		}
	
		# Below 70 : FAIL
		else {
			status = "FAIL"
		}

		print "Name: ", student, "|" ,"Total Score: ", arr[student], "|" ,"AVG Score", average, "|" ,"Status: ", status
	}

	print "Top student: ", topStudent, "with score: ", max
        print "Bottom student: ", bottomStudent, "with score: ", min
}
