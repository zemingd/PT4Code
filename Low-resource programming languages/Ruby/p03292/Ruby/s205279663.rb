A=gets.split.map(&:to_i).sort
p A.each_cons(2).map{|l,r|r-l}.inject(:+)