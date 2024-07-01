a, b = gets.chomp.split(" ").map(&:to_i)
nums = []
nums.push a / b, a % b, a / b.to_f
puts nums.join(" ")