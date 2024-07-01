n = gets.chomp.to_i
nums = gets.split.map(&:to_i).sort
l = nums[(n/2 - 1)]
g = nums[(n/2)]
ans = g - l
puts ans