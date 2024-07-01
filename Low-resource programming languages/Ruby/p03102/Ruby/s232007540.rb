n,_,c=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
puts n.times.select{gets.split.map(&:to_i).zip(b).map{|x,y|x*y}.inject(&:+)+c>0}.size