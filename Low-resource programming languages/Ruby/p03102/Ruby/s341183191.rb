n,m,c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
a = n.times.map{gets.split.map(&:to_i)}

p n.times.map{|i|m.times.map{|j|a[i][j]*b[j]}.inject(:+)+c}.count{|x|x>0}