n=gets.to_i
s=gets.split.map!(&:to_i)
ans=0
max=s.sum
hei=((max/n)+1).to_i
for i in 0..n-1
  ans+=(s[i]-hei)**2
end
puts ans
