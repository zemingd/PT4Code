n=gets.to_i
a=gets.split.map &:to_i
lcm=a[0].lcm(a[1])
for i in 2..n-1 do
  lcm=lcm.lcm(a[i])
end
lcm-=1; ans=0
n.times do|i|
  ans+=lcm%a[i]
end
puts ans
