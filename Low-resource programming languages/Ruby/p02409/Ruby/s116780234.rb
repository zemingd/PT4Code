house = Array.new(4){Array.new(3){Array.new(10,0)}}
n = gets.to_i

n.times
do
b,f,r,v = gets.split.map(&:to_i)
house[b-1][f-1][r-1] += v
end

for b in 0...4
 for f in 0...3
  for r in 0...10
print " " + house[b-1][f-1][r-1]
end
puts " "
end
puts "#" * 20 unless b==4
end
