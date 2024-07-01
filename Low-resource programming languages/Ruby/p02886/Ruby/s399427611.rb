io = STDIN
n=io.gets.to_i
d=io.gets.split.map(&:to_i)
p d.combination(2).map{|a,b|a*b}.inject(:+)
