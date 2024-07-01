n, k = gets.split.map(&:to_i)
h = []
n.times do
  h.push(gets.chomp.to_i)
end

s_h = h.sort

puts (0..(n-k)).to_a.map { |i| s_h[i+k-1] - s_h[i] }.min
