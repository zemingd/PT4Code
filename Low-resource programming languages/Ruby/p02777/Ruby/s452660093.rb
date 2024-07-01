a=gets.chomp.split.map(&:to_i)
b=gets.chomp.split(" ").map{|i| (i.to_f+1)/2}
c=[]
d=0
e=0
j=0
k=1
sum=0
(a[0]-a[1]+1).times do 
  a[1].times do
   sum+=b[d]
    d+=1
  end
  c.push(sum)
  e+=1
  d=e
  sum=0
end
puts c[-1]