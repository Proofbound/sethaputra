#!/bin/bash

# Script to concatenate all .qmd files from /en directory in the order from _quarto.yml
# Output: dictionary-maker-all.md

OUTPUT_FILE="dictionary-maker-all.md"
EN_DIR="en"

# Remove existing output file if it exists
rm -f "$OUTPUT_FILE"

# Array of files in the order they appear in en/_quarto.yml
FILES=(
    "index.qmd"
    "CH01-The_Last_Siamese.qmd"
    "CH02-Siam_in_Transition.qmd"
    "CH03-The_Elite_Under_Threat.qmd"
    "CH04-The_Coup_and_Its_Aftermath.qmd"
    "CH05-Prison_University.qmd"
    "CH06-The_Dictionary_Project_Begins.qmd"
    "CH07-Rising_Storm.qmd"
    "CH08-Tarutao_Exile.qmd"
    "CH09-War_Comes_to_Siam.qmd"
    "CH10-Survival_and_Perseverance.qmd"
    "CH11-Liberation_and_Legacy.qmd"
    "CH12-The_Dictionary_Makers_Gift.qmd"
    "references.qmd"
)

echo "Creating concatenated file: $OUTPUT_FILE"

for file in "${FILES[@]}"; do
    filepath="$EN_DIR/$file"
    if [ -f "$filepath" ]; then
        echo "Adding $file..."
        
        # Extract chapter name from the first line if it contains a title
        chapter_name=$(head -n 5 "$filepath" | grep -E "^# " | head -n 1 | sed 's/^# //')
        if [ -z "$chapter_name" ]; then
            chapter_name=$(basename "$file" .qmd)
        fi
        
        # Add header
        echo "" >> "$OUTPUT_FILE"
        echo "---- $file - $chapter_name ----" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        
        # Add file content
        cat "$filepath" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    else
        echo "Warning: $filepath not found, skipping..."
    fi
done

echo "Concatenation complete. Output saved to: $OUTPUT_FILE"
echo "Total lines: $(wc -l < "$OUTPUT_FILE")"