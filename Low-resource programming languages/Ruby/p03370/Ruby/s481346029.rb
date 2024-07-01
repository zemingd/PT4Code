n,x=gets.split.map(&:to_i)
m=[]
n.times do
  m<<gets.to_i
end
m.sort!
zan = x - m.sum
puts zan.div(m[0]) + n
