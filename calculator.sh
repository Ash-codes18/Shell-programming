echo "Enter a no. :"
read a
echo "Enter another no. :"
read b
echo -e "\nList of operations available :\n1.)Addition\n2.)Subtraction\n3.)Multiplication\n4.)Division\n"
echo "Enter your choice : "
read c

if [ "$c" -eq 1 ]
then 
    echo "Sum : "$(( a + b ))
fi

if [ "$c" -eq 2 ]
then 
    echo "Difference : "$(( a - b ))
fi

if [ "$c" -eq 3 ]
then 
    echo "Product : "$(( a * b ))
fi
if [ "$c" -eq 4 ]
then
    echo "Quotient : "`expr $a / $b`
fi
