n,m,c=gets.chomp.split(" ").map{|s| s.to_i}
b=gets.chomp.split(" ").map{|s| s.to_i}
ans=0
for i in 0..n-1
  a=gets.chomp.split(" ").map{|s| s.to_i}
  for j in 0..m-1
    a[j]=a[j]*b[j]
  end
  if a.inject(:+)+c>0
    ans+=1
  end
end
puts ans