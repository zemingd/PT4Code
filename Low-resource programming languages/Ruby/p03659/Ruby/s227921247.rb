n=gets.to_i
a=gets.split.map(&:to_i)
sum=[a[0]]
all=a.sum
ans=2*a[0]-all
(1...n-1).each do |i|
  sum[i]=sum[i-1]+a[i]
  ans=[ans,(sum[i]-all+sum[i]).abs].min
end
p ans
