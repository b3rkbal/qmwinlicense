declare -a arr=()
echo "Preparing Windows VM List";
for f in /etc/pve/nodes/$HOSTNAME/qemu-server/*.conf; do
   name=$(basename $f .conf)
   
    for x in $name; do 
     if qm config $x | grep -q 'ostype:\swin10'; then
      arr+=("$x")
      #echo "${arr[@]}" ; 
     fi    
    done
   
done     
echo "Windows VM List Created Successfully";
for b in "${arr[@]}"; do
  echo "Checking VM $b";
  if ./checklicense.sh $b | grep -w 'License Expired'; then
    echo "License Expired $b" 
    ./rearmlicense $b
  fi
done
