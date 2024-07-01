line=gets
arr=line.split(" ")

arr[0],arr[1]=arr[0].to_i,arr[1].to_i

print(arr.sort.join(" "),"\n")