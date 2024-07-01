n=gets.to_i

m=100
count=0

while n>m
count+=1
m=m*1.01
m=m.floor
end

puts count