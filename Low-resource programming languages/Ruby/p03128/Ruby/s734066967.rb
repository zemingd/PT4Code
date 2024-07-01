N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

dmap = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]

dp = Array.new(N + 1, -1)
dp[0] = 0

0.upto(N) do |i|
  A.each do |a|
    if i - dmap[a] >= 0 && dp[i - dmap[a]] != -1
      dp[i] = [dp[i], dp[i - dmap[a]] * 10 + a].max
    end
  end
end

p dp[N]