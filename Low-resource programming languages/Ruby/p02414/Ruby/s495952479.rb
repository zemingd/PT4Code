def f(n)
return eval"Matrix[*(1..n).map{"+$s+"}]"
end
require'matrix'
n,m=eval $s="gets.split.map &:to_i"
a=f(n)*f(m)
n.times{|i|puts a.row(i).to_a*" "}