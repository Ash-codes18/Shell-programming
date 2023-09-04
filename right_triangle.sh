echo "Enter the no. of rows in the pattern :"
read n
i=0

while [ $i -lt $n ]
do 
	j=0
	while [ $j -le $i ]
	do
		echo -n "* "
		j=`expr $j + 1`
	done
	echo
	i=`expr $i + 1`
done
