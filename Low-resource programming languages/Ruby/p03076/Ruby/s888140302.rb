s=[]
a=[]
5.times do |i|
  s[i]=gets.to_i
  a[i]=s[i]%10==0? 0:10-s[i]%10
end
sum=0
a.zip(s).sort.each{|c,d|sum+=(c+d)}
puts sum-a.max
