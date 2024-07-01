N,M=gets.split.map(&:to_i);
v=gets.split.map(&:to_i).sort;
p (v[-1]-v[0] - v.each_cons(2).map{|(l,r)|r-l} . sort.reverse.take(N-1).reduce(0,:+))
