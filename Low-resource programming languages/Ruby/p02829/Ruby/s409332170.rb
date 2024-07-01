nums = gets.chomp.split("\n")
a = [1, 2, 3]
r = nums.reject{|n| a.include? n}
puts r