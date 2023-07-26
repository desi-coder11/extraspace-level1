#!/bin/bash

# Save the current IFS value
OLD_IFS=$IFS

# Set IFS to only include newline character to avoid splitting filenames by spaces
IFS=$'\n'

#
# Actual Operation Starts from here
#

# Step 1: Find the largest x.log file on the computer
largest_log=$(find / -type f -name "*.log" -exec du -h {} + 2>/dev/null | sort -rh | head -n 1 | cut -f2-)

# Step 2: Truncate the largest x.log file to 100 lines
    tail -n 100 "$largest_log" > "$largest_log.tmp"
    mv "$largest_log.tmp" "$largest_log"
    echo "Truncated $largest_log to 100 lines."

#
# Operation Completed
#

# Restore the original IFS value
IFS=$OLD_IFS
