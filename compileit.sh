#!/usr/bin/bash
echo "first we compile hello.c to hello.c"    
cc -c hello.c -o hello.o
ls -lt

echo "  "
echo "next we link hello.o to an executable"
cc hello.o -o hello

echo " "
echo "run the executable"
./hello 
