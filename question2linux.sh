#!/bin/user

lis()
{
ls
}


createfile()
{
echo "enter file name"
read $fname
touch $fname
}

copycontent()
{
echo "enter source file"
read src
echo "enter destination file"
read dest
cp $src $dest
}



mov()
{
echo "enter source file "
read source
echo "enter destination "
read des
mv $source $des
}



comp()
{
echo "enter the file name to compress"
read cfile
echo "enter the new compressed file name in tar.gz form"
read tfile
tar -czf $tfile $cfile
}


decom()
{
echo "enter file name to extract"
read sfile
echo "enter destination to extract file"
read dfile
tar -xf $sfile -C$dfile
}

max=8
clear

for (( i=1; i<=MAX; i++ ))
do
for (( s=MAX; s>=i; s– ))
do
echo -n ” ”
done
for (( j=1; j<=i;  j++ ))
do
echo -n ” \#”
done
echo “”
done
###### Second stage ######################
for (( i=MAX; i>=1; i– ))
do
for (( s=i; s<=MAX; s++ ))
do
echo -n ” ”
done
for (( j=1; j<=i;  j++ ))
do
echo -n ” \#”
done
echo “”
done




echo "enter your choice"
echo "1.list files"
echo "2.create file"
echo "3.copy content to another file"
echo "4.move files"
echo "5.compress files"
echo "6.unzip files"
echo "10.exit"


read $n
until [ $n -le 10 ]
do
case $n in
1)
lis
break;;
2)
createfile
break;;
3)
copycontent
break;;
4)
mov
break;;
5)
comp
break;;
6)
decomp
break;;
*)
exit 1;;
esac
done
