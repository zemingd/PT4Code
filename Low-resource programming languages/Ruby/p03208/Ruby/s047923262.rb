n, k = gets.split.map(&:to_i)
hs = []
n.times do
  hs << gets.to_i
end

hs.sort!
ans = Float::INFINITY
n.times do |i|
  break if hs[i+k-1].nil?
  ans = [ans, (hs[i] - hs[i+k-1]).abs].min
end

puts ans
