n,m=gets.chomp.split(" ").map{|s| s.to_i}
a=gets.chomp.split(" ").map{|s| s.to_i}.sort
t=[]
n-=1
for i in 0..m-1
  t[i]=gets.chomp.split(" ").map{|s| s.to_i}.reverse
end
t=t.sort.reverse
f=false
p=0
for i in 0..m-1
  for j in p..p+t[i][1]-1
    if a[j]<t[i][0]
      a[j]=t[i][0]
      p+=1
    else
      f=true
      break
    end
  end
  break if f
end

p a.inject(:+)
