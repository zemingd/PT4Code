a=gets.chomp.to_i
b=gets.chomp.split.map(&:to_i)
d=gets.chomp.split.join.to_i

c=b.permutation(a).to_a
h=0
c.each do |x|
  c[h]=x.join.to_i
  h+=1
end
c=c.sort
b=b.join.to_i
v=c.index(b)
n=c.index(d)
if v-n>0
  puts v-n
else puts n-v
end
