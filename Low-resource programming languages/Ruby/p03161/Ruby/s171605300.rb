N, K = gets.split.map(&:to_i)
hs = gets.chomp.split.map(&:to_i)

dp = Array.new(N, 10 ** 4)

dp[0] = 0
dp[1] = (hs[0] - hs[1]).abs
for i in 1..(N - 1) do 
  from_max = [i, K].min
  for j in (i - from_max)..(i - 1) do
    dp[i] = [dp[i], dp[j] + (hs[i] - hs[j]).abs].min
  end
end

puts dp[N - 1]
