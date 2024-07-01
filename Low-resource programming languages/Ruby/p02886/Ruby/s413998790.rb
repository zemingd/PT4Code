gets.to_i
nums = gets.split.map(&:to_i)

sum = 0
nums.permutation(2) { |takos| sum += takos[0] * takos[1]}
puts sum / 2