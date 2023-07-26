#Find the largest log file in computer (x.log) and truncate it to 100 lines.


OLD_IFS=$IFS

#  character to avoid splitting spaces
IFS=$'\n'



largest_log=$(find / -type f -name "*.log" -exec du -h {} + 2>/dev/null | sort -rh | head -n 1 | cut -f2-)

    tail -n 100 "$largest_log" > "$largest_log.tmp"
    mv "$largest_log.tmp" "$largest_log"
    echo "Truncated $largest_log to 100 lines."



IFS=$OLD_IFS
