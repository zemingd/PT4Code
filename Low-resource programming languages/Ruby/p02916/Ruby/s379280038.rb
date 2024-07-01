N = gets.to_i
A, B, C = $<.map{|s| s.split.map &:to_i }

ans = 0
(1..N).each{|i|
  ans += B[A[i-1]-1]
  if i != N && A[i-1] + 1 == A[i]
    # p 1
    ans += C[A[i-1]-1]
  end
}
p ans