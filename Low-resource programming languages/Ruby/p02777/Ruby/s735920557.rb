s,t = gets.chomp.split
a,b = gets.split.map(&:to_i)
u = gets.chomp

puts u == s ? "#{a-1} #{b}" : "#{a} #{b-1}"