# extraspace-level1
bash script

find largest log file and get total number of lines
  find / -type f -name "*.log" -exec du -h {} + 2>/dev/null | sort -rh | head -n 1 
# wc -l <file name with full path> 
# execute truncate_log.sh
#./truncate_log.sh

get 100 lines of code
# wc -l <file name with full path> 



