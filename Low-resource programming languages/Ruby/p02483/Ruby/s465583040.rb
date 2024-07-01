line=gets
arr=line.split(" ")

for i in 0..2
   arr[i]=arr[i].to_i
end

print(arr.sort)
print"\n"