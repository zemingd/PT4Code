n = gets.to_i
d = gets.split.map(&:to_i)
p d.combination(2).to_a.map{|a|a[0]*a[1]}.inject(:+)
