n = gets.chomp.to_i
w = gets.chomp.split.map(&:to_i)
sum = w.inject(:+)
min = sum
part_sum = 0
(0..(n-1)).each do |num|
  part_sum += w[num]
  tmp = (part_sum - (sum - part_sum)).abs
  min = tmp if tmp < min
end

puts min
