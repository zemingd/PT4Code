N = gets.to_i
d = gets.split(" ").map(&:to_i)
d.sort!
cnt = 0
if d.size % 2 != 0
  c1 = c2 = d.size/2
else
  c1 = d.size/2 - 1
  c2 = d.size/2 
end
d[c1].upto(d[c2]-1) do |k|
  cnt += 1
end
puts cnt