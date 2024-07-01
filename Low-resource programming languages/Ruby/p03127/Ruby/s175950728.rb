def euc(a,b)
  if a>b
    a^=b
    b^=a
    a^=b
  end

  return a if b%a==0
  return euc(a,b%a)
end

n=gets.chomp.to_i
a=gets.chomp.split(" ").map{|s| s.to_i}
ans=euc(a[0],a[1])
for i in 0..n-1
  ans=euc(ans,a[i])
end
p ans
