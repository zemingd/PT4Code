N,K=gets.split.map(&:to_i)
as=N.times.map{gets.to_i}.sort
ans=Float::INFINITY
(N-K+1).times do |i|
  cnt=as[i+K-1]-as[i]
  ans= ans > cnt ? cnt : ans
end
puts ans