n = gets.to_i
weights = gets.split.map(&:to_i)
min_gap = weights.max - weights.min
(n-1).times do |i|
  a = weights[0..i].inject(:+)
  b = weights[(i+1)..-1].inject(:+)
  gap = (a-b).abs
  min_gap = gap if gap < min_gap
end
puts min_gap
