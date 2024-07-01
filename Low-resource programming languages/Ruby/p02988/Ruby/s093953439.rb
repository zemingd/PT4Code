n = gets.to_i
p = gets.split.map &:to_i
count = 0
0.upto(n-3) do |i|
  count += 1 if p[i,3].sort[1] == p[i+1]
end
puts count