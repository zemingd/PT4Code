s, t = gets.chomp.split(" ").map(&:to_s)
a, b = gets.chomp.split(" ").map(&:to_i)
u = gets.chomp.to_s
u == s ? a -= 1 : b -= 1
puts "#{a} #{b}"