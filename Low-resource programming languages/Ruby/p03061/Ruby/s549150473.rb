n=gets.to_i
s=gets.split.map &:to_i
a=s.reverse
ans=[]
ans1=[]
ans2=[]
ans1[0]=s[0]
ans2[0]=a[0]
sum1=s[0]
sum2=a[0]
for i in 1..n-2
  ans1 << sum1.gcd(s[i])
  ans2 << sum2.gcd(a[i])
end
ans << ans2[n-2]
ans << ans1[n-2]
for i in 0..n-2
  ans << ans1[i].gcd(ans2[i])
end
puts ans.max
