i=$1
qm guest exec $i "powershell.exe" "powershell.exe" "slmgr -rearm; shutdown -r -t 0"
