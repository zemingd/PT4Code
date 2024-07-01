def combi(n,k)
  k=n-k if 2*k > n
  return 1 if k == 0
  ((n-k+1)..n).reduce(&:*)/((1..k).reduce(&:*))
end

N, M = gets.split.map &:to_i
p combi(N,2)+combi(M,2)