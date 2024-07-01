n=gets.to_i
T=gets.split(" ")
h=gets.split(" ")
ans=0
nums=[]
n.times do |i|
nums[i]=(T[1].to_i-(T[0].to_i-h[i].to_i*0.006)).abs
end
n.times do |i|
if nums[i]==nums.min then
ans=i
break
end
end
puts  ans+1