N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

r = Array.new(N, 0)
r[N - 1] = A[-1]
(N - 2).downto(1){|i|
  r[i] = A[i].gcd(r[i + 1])
}
ans = Array.new(N, 0)
ans[0] = r[1]
wk = A[0]
1.upto(N - 2){|i|
  ans[i] = wk.gcd(r[i+1])
  wk = wk.gcd(A[i])
}
ans[N - 1] = wk

puts ans.max
