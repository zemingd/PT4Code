n, k = gets.split.map(&:to_i)
hs = []
n.times do |_i|
  hs << gets.to_i
end

hs.sort!
deltas = []
(0..(n - k)).each_with_index do |i, j|
  deltas << hs[j + k - 1] - hs[j]
end

puts deltas.min
