n,m=gets.split.map(&:to_i)
c=Array.new(40,0)
n.times do
  k,*a=gets.split.map(&:to_i)
  k.times do |i|
   c[a[i]]+=1
  end
end  
cnt=0
c.each do |ce|
  if ce==n
    cnt+=1
  end
end
p cnt