N,K,Q,*A = `dd`.split.map &:to_i
S = Array.new(N,K)
A.each{ |a|
  S[a-1] += 1
}
puts S.map{ |a| a > Q ? "Yes" : "No" }