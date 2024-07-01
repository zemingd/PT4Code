a,b,c,d=gets.split
a=a.to_i
b=b.to_i
c=c.to_i
d=d.to_i

ss=[a,c].max
tt=[b,d].min
answer=tt-ss

if answer<0
puts 0
else puts answer
end