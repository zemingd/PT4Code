n,m=gets.split.map &:to_i
a=gets.chomp.split.map &:to_i
b=Array.new(n,0)
c=Array.new(n,0)
a.sort!
n.times do |i|
  b[i]=Math.log(a[i],2).to_i
end
m.times do
  i=b.index b.max
  b[i]-=1
  c[i]+=1
end
sum=0
n.times do |i|
  if c[i]==0
    sum+=a[i]
  else
    sum+=a[i]/(2**c[i])
  end
end
puts sum