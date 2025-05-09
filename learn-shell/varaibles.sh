#Variable practice one

x=10
y=hello

#print variables
echo x - $x
echo y - ${y}


# Pass value
echo z - ${1}

#Dynamic variables

DATE=$(date)
echo today date is ${DATE}

ADD=$((100+200))
echo addition of numbers : ${ADD}