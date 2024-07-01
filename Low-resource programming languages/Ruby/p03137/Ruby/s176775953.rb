k,n,*a=`dd`.split.map &:to_i
p k>=n ? 0 : a.each_cons(2).map{|x,y|y-x}.min(n-k).reduce :+