n, tail = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

d = nums.inject{|it, acc| it.lcm(acc)}
half_d = d / 2
puts tail / half_d - tail / d