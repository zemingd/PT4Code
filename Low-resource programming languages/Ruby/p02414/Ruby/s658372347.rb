require'matrix'
n,m,l=eval s="gets.split.map &:to_i"
a=eval "Matrix[*(1..n).map{"+s+"}]"
b=eval "Matrix[*(1..m).map{"+s+"}]"
puts a
puts b