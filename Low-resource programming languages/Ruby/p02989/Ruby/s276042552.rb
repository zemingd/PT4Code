N = gets.to_i
d = gets.split(" ").map(&:to_i)
d.sort!
if d.size % 2 != 0
  c1 = c2 = d.size/2
else
  c1 = d.size/2 - 1
  c2 = d.size/2 
end

puts d[c2] - d[c1]