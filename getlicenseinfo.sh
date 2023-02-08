i=$1
qm guest exec $i "powershell.exe" "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; iwr https://raw.githubusercontent.com/b3rkbal/qmwinlicense/main/1.ps1 -useb | iex"
