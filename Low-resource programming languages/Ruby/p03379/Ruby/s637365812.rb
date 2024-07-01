N=gets.to_i
Xs=(X=gets.split.map &:to_i).sort
p m1=Xs[~-N/2]
p m2=Xs[N/2]
puts X.map{|x|x<=m1 ? m2 : m1}