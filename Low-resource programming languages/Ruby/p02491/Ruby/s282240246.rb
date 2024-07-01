line=gets
arr=line.split(" ")
arr[0],arr[1]=arr[0].to_i,arr[1].to_i

d=arr[0]/arr[1]
r=arr[0]%arr[1]
f=arr[0]*1.0/arr[1]*1.0
printf("%d %d %.5f\n",d,r,f)