def m(a,n)
a=eval "Matrix[*(1..n).map{"+s+"}]"
end
require'matrix'
n,m,l=eval $s="gets.split.map &:to_i"
a=[]
b=[]
m(a,n)
m(b,n)
puts a
puts b