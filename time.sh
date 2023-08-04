#!/bin/bash
#With this script you can measure the time taken to execute specific command like move, copy or anything
Start=$(date +%s)
#give any command to check time
sleep 6
End=$(date +%s)
diff=$(( End - Start ))
echo "Total Time Escaped: $diff seconds"