N, K = gets.chomp.split(" ").map(&:to_i)
S = gets.chomp

h = []
h << [0, 0] if S[0] == '0'
wk, flg = [0, false]
(0...N).each{|i|
  (wk = i; flg = true) if (not flg) && S[i] == '1'
  (h << [wk, i - 1]; flg = false) if flg && S[i] == '0'
}
flg ? (h << [wk, N - 1]) : (h << [N - 1, N - 1])
ans = []
(0...(h.size - K)).each{|i|
  ans << (h[i+K][1] - h[i][0] + 1)
}
ans << N if ans.empty?

puts ans.max
