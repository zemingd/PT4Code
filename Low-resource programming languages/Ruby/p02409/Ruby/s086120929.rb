house = Array.new(4){Array.new(3){Array.new(10,0)}}
n = gets.to_i

n.times{
b,f,r,v = gets.split.map(&:to_i)
house[b][f][r] += d
}

for b in 0...4
 for f in 0...3
  for r in 0...10
print " " + house[b][f][r]
end
puts " "
end
puts "#" * 20 unless b==4
end
