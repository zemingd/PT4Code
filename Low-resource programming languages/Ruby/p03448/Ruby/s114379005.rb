A,B,C,X=`dd`.split.map(&:to_i)
p (0..A).map{ |a| (0..B).map{ |b| (0..C).count{ |c| 500*a+100*b+50*c == X } } }.flatten.inject(:+)