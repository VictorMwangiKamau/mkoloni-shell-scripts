#!/bin/zsh
#this is to get the area of a circle

Pi=3
echo "Pie is $Pi"
echo "Enter the radius of the circle"
radius=0
read radius
echo -n "Area is = "
echo `expr $Pi \* $radius \* $radius`
echo -n "Circumference is"
diameter=`expr $radius \* 2`
echo `expr $Pi \* $diameter`

if (( 1 < 2 )); then
  echo "Hello world"
fi

