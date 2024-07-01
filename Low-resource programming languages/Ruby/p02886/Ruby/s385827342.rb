gets
puts gets.split.map(&:to_i).combination(2).map{|x,y|x*y}.inject(&:+)