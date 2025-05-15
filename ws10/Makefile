# Define filenames
RAW = raw.csv
TRIMMED = trimmed.csv
CLEAN = clean.csv

# Default target
all: $(CLEAN)

# Create trimmed.csv by selecting id, age, and score
$(TRIMMED): $(RAW)
	cut -d',' -f1,3,5 $(RAW) > $(TRIMMED)

# Remove rows with missing age or score to get clean.csv
$(CLEAN): $(TRIMMED)
	awk -F',' 'NR==1 || ($$2 != "" && $$3 != "")' $(TRIMMED) > $(CLEAN)

# Clean up intermediate files
clean:
	rm -f $(TRIMMED) $(CLEAN)
