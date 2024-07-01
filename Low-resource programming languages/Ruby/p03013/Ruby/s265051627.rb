n, m = gets.chomp.split.map(&:to_i)
dame = [-1]
m.times { dame << gets.chomp.to_i }
dame << (n + 1)
splits = []
(dame.size - 1).times do |i|
  splits << (dame[i + 1] - 1) - (dame[i] + 1)
end
counts = [1, 1, 2]
(10000 - 2).times do |i|
  counts << counts[i + 1] + counts[i + 2]
end
counts << 0
ans = 1
splits.count.times do |i|
  ans *= counts[splits[i]]
end
puts ans % 1_000_000_007