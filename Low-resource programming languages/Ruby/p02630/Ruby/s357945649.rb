N = gets.to_i
As = gets.split.map(&:to_i)
Q = gets.to_i
lines = readlines
Bs = []
Cs = []
i = 0
lines.length.times do
  Bs[i], Cs[i] = lines[i].split
  i += 1
end

Bs.size.
Ss = []
Bs.each_with_index do |bi, i|
  As.map {|a| a == Bs[i] ? Cs[i] : a }
  Ss << As.sum
end

puts Ss
