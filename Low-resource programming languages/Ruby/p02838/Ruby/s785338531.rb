N=gets.to_i
A=gets.split.map(&:to_i)
ans=0

for i in 0..60
  p=0
  for j in 0..N-1
    p+=A[j][i]
  end
  ans+=p*(N-p)
end

ans%=(10**9+7)
puts ans