n,m,c=gets.chomp.split(" ").map{|a| a.to_i}
b=gets.chomp.split(" ").map{|a| a.to_i}
puts n.times.select{gets.chomp.split(" ").map(&:to_i).zip(b).map{|x,y| x*y}.inject(:+)+c>0}.size