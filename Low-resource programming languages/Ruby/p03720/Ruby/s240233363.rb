n,m=gets.split.map &:to_i
s=[]
m.times do
  a,b = gets.split.map &:to_i
  s << a
  s << b
end
n.times do |i|
  p s.count(i+1)
end
