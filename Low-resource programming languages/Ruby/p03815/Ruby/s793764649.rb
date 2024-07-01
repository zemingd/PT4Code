x = gets.chomp.to_i

t1 = x / 11
t2 = x - 11 * t1
t3 = (t2.to_f / 6.to_f).ceil

puts 2 * t1 + t3
