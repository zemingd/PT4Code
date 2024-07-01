n,k=gets.split.map(&:to_i)
if k==1
  puts 0
  exit
end
a=gets.split.map(&:to_i)
as=[a[0]]
(n-1).times do |i|
  as[i+1]=as[i]+a[i+1]
end
c=[]
cs=[]
(n-1).times do |i|
  if i<=k-2
    c[i]=0
    cs[i]=0
  elsif i==k-1
    c[i]=1
    cs[i]=1
  else
    c[i]=c[i-1]*(i-1)/(i-k+1)
    cs[i]=cs[i-1]+c[i]
  end
end
ans=0
mod=1000000007
(n/2).times do |i|
  ans+=(as[n-1-i]-as[i])*(cs[n-1-i]-cs[i])
  ans%=mod
end
puts ans