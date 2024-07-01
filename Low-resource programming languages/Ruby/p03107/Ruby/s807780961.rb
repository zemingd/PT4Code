s = gets.chomp
r = s.count("0")
b = s.count("1")

puts (r <= b ? r : b) * 2
