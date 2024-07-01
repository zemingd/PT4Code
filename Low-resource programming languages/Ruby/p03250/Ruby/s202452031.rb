a, b, c = gets.split.map(&:to_i)

nums = [a,b,c].sort

puts 10*nums.pop + nums.pop + nums.pop
