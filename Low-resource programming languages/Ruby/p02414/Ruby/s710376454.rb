require 'matrix'
n,m,l=eval x="gets.split.map &:to_i"
a=(1..n).map{eval x}
b=(1..m).map{eval x}
M=Matrix
puts (M[*a]*M[*b]).to_a.map{|i|i*" "}
