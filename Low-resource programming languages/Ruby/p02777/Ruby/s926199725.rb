s, t = gets.chomp.split(' ')
a, b = gets.chomp.split(' ').map(&:to_i)
u = gets.chomp

a -= 1 if s == u
b -= 1 if t == u

puts "#{a} #{b}"