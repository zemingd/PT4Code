array = gets.split(" ").map(&:to_i)
array.sort!

puts (array[-1] * 10 + array[-2]) + array[-3]