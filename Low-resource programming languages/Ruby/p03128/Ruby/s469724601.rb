N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

cost = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]

dp = Array.new(N + 1) { Array.new(N + 1, '') }
dp[0][0] = '0'

ans = 0
i = 0

loop do
  updated = false

  N.times do |j|
    next if dp[i][j] == ''

    A.each do |n|
      total = j + cost[n]
      next if total > N

      dp[i+1][total] = [dp[i+1][total], dp[i][j] + n.to_s].max

      if total == N && ans < dp[i+1][total].to_i
        ans = dp[i+1][total].to_i
      end

      updated = true
    end
  end

  break unless updated
  i += 1
end

puts ans
