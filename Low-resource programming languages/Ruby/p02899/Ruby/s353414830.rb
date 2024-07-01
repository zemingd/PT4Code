n=gets.to_i
a=gets.split.map(&:to_i)
c=[]
(0..n-1).each do |i|
    c[a[i]-1]=i+1
 end
print c.join(" ")
