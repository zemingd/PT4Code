n = gets.to_i
nums = []
n.times { nums << gets.to_i }
puts nums.inject(:lcm)
