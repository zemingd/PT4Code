s, t = gets.split
a, b = gets.split.map(&:to_i)
u = gets.chomp
puts s == u ? "#{a - 1} #{b}" : "#{a} #{b - 1}"