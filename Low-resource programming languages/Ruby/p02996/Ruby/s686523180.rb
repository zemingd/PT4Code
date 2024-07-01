n = gets.chop.split.map(&:to_i)
n=n[0]
a=[]
b=[]
c=[]
a_sum=0
for i in 0...n
  a[i],b[i]=gets.chop.split.map(&:to_i)
  a_sum+=a[i]
  #c[i]=[a[i], b[i]]
end

a.sort!
b.sort!

sw=0
while(b[b.length-1]>a_sum)
  a_sum-=a.pop
  #p a_sum
  b.pop
  if(a.length==0 && a_sum<=0)
    sw=1
    break
  end
end

if(sw==0)
  puts "No"
else
  puts "Yes"
end
