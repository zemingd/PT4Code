N=gets.to_i
A=gets.split.map &:to_i
s=A.map{|i|i.abs}.inject :+
x=A.min{|l,r|l.abs<=>r.abs}.abs
p(A.count{|i|i<0}.odd? && A.all?{|i|!i.zero?} ? s-2*x : s)