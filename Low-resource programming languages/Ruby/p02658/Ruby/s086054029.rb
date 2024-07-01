_n = gets.to_i
nums = gets.strip.split.map(&:to_i)
(a = nums.inject(:*)) > 10**18 ? -1 : a
