n,m = gets.chop.split.map(&:to_i)
a=Array.new(n)
b=Array.new(m)
c=Array.new(m)
 
a=gets.chop.split.map(&:to_i)

for i in 0...m
  b[i], c[i]=gets.chop.split.map(&:to_i)
  temp=Array.new(b[i], c[i])
  a.push(temp)
end
a.flatten!
a.sort!
b_sum=b.inject(:+)
res=a[(a.length-n)...a.length]

puts res.inject(:+)
