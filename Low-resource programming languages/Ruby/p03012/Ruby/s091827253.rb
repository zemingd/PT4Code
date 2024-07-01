N = gets.to_i
W = gets.split(" ").map(&:to_i)

sum = 0
W.each do |w|
  sum += w
end

min = sum
sum_b = 0
W.each do |w|
  sum_b += w
  sum -= w
  min = [min, (sum - sum_b).abs].min
end
puts min

