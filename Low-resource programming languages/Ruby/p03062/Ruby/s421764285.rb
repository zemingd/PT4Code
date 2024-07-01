n = gets.to_i
nums = gets.split.map(&:to_i)
including_one_minus = nums.select { |num| num < 0 }.size.odd? ? true : false
absolute_nums = nums.map { |num| num.abs }.sort
ans = absolute_nums.sum
ans -= absolute_nums.first * 2 if including_one_minus
puts ans
