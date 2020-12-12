#!/bin/bash
checkPalindrome(){
temp=$1
while [ $temp -gt 0 ]
do
	digit=$(($temp%10))
	reverse=$((reverse*10+$digit))
	temp=$(($temp/10))
done
if [ $reverse -eq $1 ]
then
	return 0
else
	return 1
fi
}

echo Enter a number
read num
checkPalindrome $num
if [ $? -eq 0 ]
then
	echo Number is Palindrome
else
	echo Number is not Palindrome
fi
