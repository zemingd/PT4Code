#! ruby -Ku
a,b = gets.chomp.split(" ")

puts ">" if a > b
puts "<" if a < b
puts "=" if a == b