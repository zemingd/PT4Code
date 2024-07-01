(_,k)=gets().split.map(&:to_i);
s=gets().chomp()
aa=([["",""]]+s.scan(/(0*(1*))/)).each_cons(k+1)
p aa==[]? s.size : aa.map{|a|p a;a[0][1].size+ a.drop(1).map{|x,y|x.size}.reduce(0,:+)}.max