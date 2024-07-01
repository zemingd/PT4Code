n=gets.to_i
s=[]
n.times do |i|
  s[i]=gets.chomp.chars
  s[i].sort!
end
s.sort!
a=s.uniq
ans=0
for i in 0...a.size
  n=s.count(a[i])
  ans+= n==1 ? 1:(1...n).inject(0){|sum,i|sum+=i}
end
puts ans
