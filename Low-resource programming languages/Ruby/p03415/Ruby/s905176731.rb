a = gets.chomp
b = gets.chomp
c = gets.chomp

puts a.slice!(0, 1) + b.slice!(1, 1) + c.slice!(-1)
