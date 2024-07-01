N = gets.to_i
S = gets.chomp
dp = Array.new(N + 1, 0)
('a' .. 'z').each do |c|
  s = S.index(c)
  t = S.rindex(c)
  unless s.nil?
    dp[s + 1] += 1
    dp[t + 1] -= 1
  end
end
ans = (1 .. N).inject(0) do |max, i|
  dp[i] += dp[i - 1]
  dp[i] > max ? dp[i] : max
end
puts ans