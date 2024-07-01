S,T = gets.split
a,b = gets.split.map(&:to_i)
U = gets.chomp

a -= 1 if S == U
b -= 1 if T == U

puts "#{a} #{b}"
