a1, a2, a3 = gets.chomp.split(' ').map(&:to_i)

b = []
b << (a1 - a2).abs
b << (a2 - a3).abs
b << (a3 - a1).abs

b.sort!

puts b[0] + b[1]
