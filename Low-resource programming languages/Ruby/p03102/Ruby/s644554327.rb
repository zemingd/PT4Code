n, m, c = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
p n.times.map{gets.split.map(&:to_i).zip(bs).map{|x, y| x*y}.reduce(:+)}.select{|x| x+c>0}.size
