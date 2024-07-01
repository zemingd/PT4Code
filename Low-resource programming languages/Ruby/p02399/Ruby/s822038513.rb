str=gets
array=str.split(" ")
a=array[0].to_i
b=array[1].to_i
print(a/b," ",a%b," ",sprintf("%.5f", a.to_f/b),"\n")