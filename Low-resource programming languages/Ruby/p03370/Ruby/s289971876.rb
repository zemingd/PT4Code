n,x=gets.split.map(&:to_i)
m=[]
n.times do
  m<<gets.to_i
end
m.sort!
sum=0
m.each do |i|
  sum+=i
end
zan = x - sum
puts zan.div(m[0]) + n
