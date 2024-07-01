nums = gets.split.map(&:to_i)
max_num = nums.max

rest_sum = nums.inject(:+) - max_num

k = gets.chomp.to_i

sum = max_num * 2 ** k + rest_sum
puts sum
