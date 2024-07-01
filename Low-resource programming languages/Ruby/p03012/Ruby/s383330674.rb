n = gets.to_i
w = gets.split.map(&:to_i)
w_sum = w.inject(:+)
prefix_sum = 0
ans = 100 * 100 + 1

n.times do |i|
  prefix_sum += w[i]
  ans = (w_sum - prefix_sum).abs if ans > (w_sum - prefix_sum).abs
end

puts ans