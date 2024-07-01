N, M = gets.split.map(&:to_i)
COSTS = [0,2,5,5,4,5,6,3,7,6]
A = gets.split.map(&:to_i).sort.reverse

MIN = A.map do |a|
  COSTS[a]
end.min

# dp[i]: マッチをi本使ったときの最大の桁数
# dp[i] = max(dp[i - COSTS(A[j])] + 1| j = 1 ~ M)
dp = Array.new(N + 7) {-1}

dp[0] = 0

0.upto(N - 1) do |i|
  next if dp[i] == -1

  A.each do |a|
    dp[i + COSTS[a]] = [dp[i + COSTS[a]], dp[i] + 1].max
  end
end

ans = ''
remaining = dp[N]
match = N

# 大きい桁から決めていく
while match > 0
  # p "match #{match} remaining #{remaining}"
  A.each do |a|
    if match - COSTS[a] < 0
      next
    end

    if dp[match - COSTS[a]] < 0
      next
    end

    # p "a: #{a} digit: #{dp[match - COSTS[a]]} from #{match - COSTS[a]}"

    if dp[match - COSTS[a]] + 1 == remaining
      # p "choose #{a}"
      ans = ans + a.to_s
      match -= COSTS[a]
      remaining -= 1
      break
    end
  end
end

puts ans
