N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

cost = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]

dp = Array.new(N + 1, '')
dp[0] = '0'

ans = 0
i = 0

N.times do |i|
  next if dp[i] == ''

  A.each do |n|
    total = i + cost[n]
    next if total > N

    str = dp[i] + n.to_s

    if dp[total].to_i < str.to_i
      dp[total] = str
    end
  end
end

puts dp[N].to_i
