gets
p gets.split.map(&:to_i).combination(2).map{|i,j|i*j}.inject(:+)