X = gets.chomp.to_i
A = gets.chomp.to_i
B = gets.chomp.to_i

remind = X - A
remind = remind % B
puts remind
