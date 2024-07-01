n = gets.to_i
nums = gets.split(" ").map(&:to_i)
print  nums.sort{|a, b| b <=> a }
