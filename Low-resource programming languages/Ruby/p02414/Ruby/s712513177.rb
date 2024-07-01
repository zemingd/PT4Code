def f(n)
return eval "Matrix[*(1..n).map{"+$s+"}]"
end
require'matrix'
n,m,l=eval $s="gets.split.map &:to_i"
a=f(n)
b=f(m)
puts a
puts b