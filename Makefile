.PHONY: all clean

# The compiler (Awesome CV prefers xelatex)
CC = xelatex

# Directories and files
OUT_DIR = CVs
RESUME_DIR = resume
MAIN_TEX = resume.tex

# Find all .tex files in the resume directory to track dependencies
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

# Get current date in DD_MM_YYYY format using the Unix date command
DATE := $(shell date +%d_%m_%Y)
TARGET_NAME = Giovanni_Scovotto_CV_$(DATE)

# The final output file path
TARGET = $(OUT_DIR)/$(TARGET_NAME).pdf

# Default rule when GitHub Actions runs 'make'
all: $(TARGET)

# How to build the target
$(TARGET): $(MAIN_TEX) $(RESUME_SRCS)
	@mkdir -p $(OUT_DIR)
	$(CC) -output-directory=$(OUT_DIR) -jobname=$(TARGET_NAME) $(MAIN_TEX)

# Clean up generated files (useful for local testing, though less needed on ephemeral GitHub runners)
clean:
	rm -rf $(OUT_DIR)
