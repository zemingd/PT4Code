N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

puts A.each_cons(3).select { |a, b, c| b == [a,b,c].sort[1] }.size