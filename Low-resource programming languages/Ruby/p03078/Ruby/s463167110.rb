k = gets.split.map(&:to_i).pop
X,Y,Z = 3.times.map{ gets.split.map(&:to_i).sort.reverse }
YZ = Y.product(Z).map{|y,z| y + z }.sort.reverse
puts (YZ.size > k ? YZ.shift(k) : YZ).product(X).map{|x,yz| x + yz}.sort.reverse.shift(k)