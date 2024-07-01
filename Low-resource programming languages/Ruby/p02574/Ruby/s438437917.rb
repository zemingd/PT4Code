require 'prime'
n=gets.to_i
a=gets.split.map(&:to_i)
l=[0]*1000001
a.each do |aa|
  l[aa]+=1
end
s=0
Prime.each(1000000).to_a do |i|
  x=i
  c=0
  while x<=1000000
    if l[x]>0
      c+=l[x]
    end
    x+=i
  end
  s=c if s<c
end
#s=l.max
if s<=1
  puts "pairwise coprime"
elsif s==n
  puts "not coprime"
else
  puts "setwise coprime"
end
