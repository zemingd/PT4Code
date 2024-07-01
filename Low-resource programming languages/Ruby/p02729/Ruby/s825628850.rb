n,m=gets.split.map &:to_i
a=[*1..200].select{|i|i%2==0}
b=[*1..200].select{|i|i%2!=0}
na = n==0 ? nil : a[0..n-1]
nb = m==0 ? nil : b[0..m-1]
if na.nil?
  nn=nb
elsif nb.nil?
  nn=na
else
  nn=na+nb
end
puts nn.combination(2).map{|i|i.inject(:+)}.select{|i|i%2==0}.size
