N=gets.to_i
Xs=(X=gets.split.map &:to_i).sort
m1=Xs[~-N/2]
m2=Xs[N/2]
puts X.map{|x|x<=m1 ? m1 : m2}