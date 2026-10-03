#!/bin/bash

LOG="../logs/authentication-events.log"

echo "------------------------------------"
echo " Linux Authentication Log Analysis"
echo "------------------------------------"
echo

echo "[1] Authentication failures:"
grep -Eic "authentication failure|failed password|authentication failed" "$LOG"

echo
echo "[2] Sudo events:"
grep -ic "sudo\[" "$LOG"

echo
echo "[3] Root session openings:"
grep -ic "session opened for user root" "$LOG"

echo
echo "[4] Session openings:"
grep -ic "session opened" "$LOG"

echo
echo "[5] Session closures:"
grep -ic "session closed" "$LOG"

echo
echo "----------------------------------------------"
echo "Authentication Failures"
echo "----------------------------------------------"

grep -Ei "authentication failure|failed password|authentication failed" "$LOG"

echo
echo "----------------------------------------------"
echo "Privileged Commands"
echo "----------------------------------------------"

grep -i "sudo\[" "$LOG" | grep -o "COMMAND=.*"

echo
echo "----------------------------------------------"
echo "Users Involved"
echo "----------------------------------------------"

grep -oE "for user [a-zA-Z0-9_-]+" "$LOG" | sort | uniq -c | sort -nr
