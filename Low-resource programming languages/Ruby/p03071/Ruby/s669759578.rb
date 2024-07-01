a,b = gets.split.map(&:to_i)

nums = [a+b, 2*a-1, 2*b-1]

puts nums.max
