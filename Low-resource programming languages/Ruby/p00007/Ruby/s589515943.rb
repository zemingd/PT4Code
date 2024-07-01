d=100
n=gets.chomp.to_i
while n>0
d+=d*0.05
d=d.ceil
n-=1
end
puts d*1000