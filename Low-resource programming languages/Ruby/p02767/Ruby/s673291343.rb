N = gets.chomp.to_i
X = gets.chomp.split(/ /).map(&:to_i)
puts X.min.upto(X.max).map{ |i| X.map{ |x| (x - i) ** 2 }.inject(&:+) }.min
 
