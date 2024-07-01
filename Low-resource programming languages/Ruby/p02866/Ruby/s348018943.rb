n=gets.to_i
d=gets.split.map(&:to_i)
m=d.max
l=[0]*(m+1)
d.each do |e|
  l[e]+=1
end
if d[0]!=0||l[0]!=1
  puts 0
  exit
end
a=1
m.times do |i|
  a*=l[i]**l[i+1]
  a%=998244353
end
puts a