s = gets.chomp
t = gets.chomp

puts (0..2).count { |i| s[i] == t[i] }
