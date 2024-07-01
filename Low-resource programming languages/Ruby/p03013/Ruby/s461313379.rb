n, m = gets.chomp.split.map(&:to_i)
dame = [-1]
m.times { dame << gets.chomp.to_i }
dame << (n + 1)
splits = []
(dame.size - 1).times do |i|
  splits << (dame[i + 1] - 1) - (dame[i] + 1)
end
counts = [0, 1, 2]
(10000 - 2).times do |i|
  counts << counts[i + 1] + counts[i + 2]
end
splits.delete(0)
ans = 1
splits.count.times do |i|
  ans *= counts[splits[i]]
end
m.times do |i|
  if dame[i+1] - dame[i] == 1
    ans = 0
  end
end
puts ans % 1000000007