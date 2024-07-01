n = gets.chomp.to_i
w = gets.chomp.split.map(&:to_i)
s1 = w[0]
s2 = w.sum - s1
min_diff = (s1-s2).abs
(1..n-2).each do |t|
  s1 = s1 + w[t]
  s2 = s2 - w[t]
  diff = (s1 - s2).abs
  min_diff = diff if min_diff > diff
end
puts min_diff