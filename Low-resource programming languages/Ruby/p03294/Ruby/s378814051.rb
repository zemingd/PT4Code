gets

nums = gets.split.map{ |i| i.to_i }

div = nums.inject(:*) - 1

sum = 0
nums.each {|i| sum += div % i}

puts sum
