line=gets
arr=line.split(" ")
arr[0],arr[1]=arr[0].to_i,arr[1].to_i

d=arr[0]/arr[1]
r=arr[0]%arr[1]
f=arr[0]*1.00000/arr[1]*1.00000
puts "#{d} #{r} #{f}"