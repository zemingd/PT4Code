ar = gets.split
a = ar[0]
ar[0] = ar[2]
ar[2] = ar[1]
ar[1] = a
print ar[0]," ",ar[1]," ",ar[2]