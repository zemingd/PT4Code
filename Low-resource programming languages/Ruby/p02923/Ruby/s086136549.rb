gets
n=0
p gets.split.map(&:to_i).each_cons(2).map{|l,r|n=(l>=r ?n+1:0)}.max
