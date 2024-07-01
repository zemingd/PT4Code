n,k=gets.split.map(&:to_i)
p=gets.split.map(&:to_f)
e=[]
sum=[0]
sum[1]=(p[0]+1)/2
ans=sum[1]
(2..n).each do |i|
  e[i]=(p[i-1]+1)/2
  sum[i]=sum[i-1]+e[i]
  ans=[ans,sum[i]-sum[i-k]].max if i-k>=0
end
p ans
