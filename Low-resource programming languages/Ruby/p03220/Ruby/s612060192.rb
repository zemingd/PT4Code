a=gets.chomp.to_i
b=gets.split.map(&:to_i)
c=gets.split.map(&:to_i)

for i in 0..(b.length-1)
  c[i]=(b[1]-(b[0]-(c[i]*0.006))).abs
end

puts c.index(c.min)+1
