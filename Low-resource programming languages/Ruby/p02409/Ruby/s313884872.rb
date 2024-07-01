house = Array.new(4){Array.new(3){Array.new(10,0)}}
n = gets.to_i

n.times{
b,f,r,v = gets.split.map(&:to_i)
house[b-1][f-1][r-1] += d
}

for b in 1..4
 for f in 1..3
  for r in 1..10
print " " + house[b-1][f-1][r-1]
end
puts " "
end
puts "#" * 20 if b != 4
end
