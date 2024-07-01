N,L=gets.split.map(&:to_i)
s=N*(L+L+N-1)/2
a=if L+N-1<0
  s-(L+N-1)
elsif L>0
  s-L
else
  s
end
p a