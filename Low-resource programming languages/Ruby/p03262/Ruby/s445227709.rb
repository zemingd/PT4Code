n,*x=`dd`.split.map &:to_i
puts x.sort.each_cons(2).map{|x,y|y-x}.inject(:gcd)
