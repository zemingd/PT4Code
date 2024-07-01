N = gets.chomp.to_i
X = gets.chomp.split(/ /).map(&:to_i)
puts 0.upto(100).map{ |i| X.map{ |x| (x - i) ** 2 }.sum }.min
