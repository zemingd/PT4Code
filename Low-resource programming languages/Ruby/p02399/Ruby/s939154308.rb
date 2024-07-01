n = gets
num = n.split(" ")
a = num[0].to_i
b = num[1].to_i
d = a / b
r = a % b
f = ( num[0].to_f / b )
print d," ",r," ",sprintf( "%.5f", f )," ","\n"