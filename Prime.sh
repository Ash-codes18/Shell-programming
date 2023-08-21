echo "Enter a no."
read a

if [ $a -eq 2 ]
then
echo "$a is a prime no."
else
i=2
flag=0
while [ $i -le `expr $a / 2` ]
do
	if [ `expr $a % $i` -eq 0 ]
	then
		flag=1
		break
	fi
i=`expr $i + 1`
done

if [ $flag -eq 0 ]
then 
	echo "$a is a prime no."
else
	echo "$a is not prime"
	
fi
fi
