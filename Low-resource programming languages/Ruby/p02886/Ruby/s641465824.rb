N = gets.to_i
D = gets.split.map(&:to_i)
p D.combination(2).map {|x,y| x * y }.inject(:+)
