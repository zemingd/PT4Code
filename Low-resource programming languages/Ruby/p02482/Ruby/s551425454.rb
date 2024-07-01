line=gets
arr=line.split(" ")

a=arr[0].to_i
b=arr[1].to_i

if a<b
   printf"a < b\n"
elsif a>b
   printf"a > b\n"
else
   printf"a == b\n"
end