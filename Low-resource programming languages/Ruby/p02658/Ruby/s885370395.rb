n = gets.to_i
nums = gets.split(" ").map(&:to_i)
ans = nums.inject(:*) > (10 ** 18) ? -1 : nums.inject(:*)
puts ans