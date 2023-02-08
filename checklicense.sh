if ./getlicenseinfo.sh $1 | grep -F '"out-data" : "0\r\n"'; then
 echo "License Expired"
else
 echo "License Valid"
fi
