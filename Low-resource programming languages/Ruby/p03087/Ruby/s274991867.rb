N, Q = gets.chomp.split(' ').map(&:to_i)
S = gets.chomp
dp = Array.new(N + 10) { -1 }
dp[0] = 0
(1..N).each do |i|
  prev = S[i - 1]
  ch = S[i]
  if prev == 'A' && ch == 'C'
    dp[i] = dp[i - 1] + 1
  else
    dp[i] = dp[i - 1]
  end
end

Q.times do
  l, r = gets.chomp.split(' ').map(&:to_i)
  # 1 to 0-origin
  l -= 1
  r -= 1
  puts dp[r] - dp[l]
end
