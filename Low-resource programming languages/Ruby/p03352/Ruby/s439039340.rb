x=gets.to_i
m=0
for p in 2..x
m=[(((x**(1.0/p)).floor)**p).to_i,m].max
end
p m