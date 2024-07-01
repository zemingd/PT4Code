S, T = gets.chomp.split
A, B = gets.split.map(&:to_i)
U = gets.chomp

a = A - (S == U ? 1 : 0)
b = B - (T == U ? 1 : 0)
puts "#{a} #{b}"