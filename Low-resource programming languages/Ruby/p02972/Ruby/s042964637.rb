n=gets.chomp.to_i
a=gets.chomp.split(" ").map{|s| s.to_i}.insert(0,nil)
b=[]
b[(n/2.0).ceil..n]=a[(n/2.0).ceil..n]
i=(n/2.0).ceil-1
while i!=0
  sum=0
  for j in 2..n/i
    sum+=b[i*j]
  end
  if sum%2==a[i]
    b[i]=0
  else
    b[i]=1
  end
  i-=1
end
p b[1..n].inject(:+)
for i in 1..n
  printf "#{i} " if b[i]==1
end