n,m=gets.split.map &:to_i
s=[]
a=[]
m.times do |i|
  s[i],a[i]=gets.split.map &:to_i
end
puts (a.min-s.max+1)<=0 0:(a.min-s.max+1)
