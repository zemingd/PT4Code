_ = gets.to_i
p gets.split.map(&:to_i).combination(2).map{|a,b| a*b}.inject(:+)