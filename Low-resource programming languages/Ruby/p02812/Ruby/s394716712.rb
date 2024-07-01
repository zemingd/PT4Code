n = gets
s = gets.chomp

puts s.split("ABC", -1).size - 1
