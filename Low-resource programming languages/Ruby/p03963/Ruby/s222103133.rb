N,K=gets.strip.split.map(&:to_i)
ans=K
(N-1).times
  ans*=K-1
end
puts ans