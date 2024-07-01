n=gets.to_i
arr=n.times.map{gets.to_i}
as=Hash.new(0)
cnt=0
for i in 0..n-1
if as[arr[i]].even?
cnt+=1
as[arr[i]]+=1
else
cnt-=1
as[arr[i]]+=1
end
end
puts cnt
