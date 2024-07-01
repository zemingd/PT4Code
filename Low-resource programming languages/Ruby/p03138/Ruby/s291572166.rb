N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

D = 40
dp = Array.new(D + 1) {
  Array.new(2, -1)
}

dp[0][1] = 0

0.upto(D-1) do |d|
  mask = 1 << D - d - 1

  num = 0
  A.each do |a|
    if a & mask > 0
      num += 1
    end
  end

  cost0 = mask * num
  cost1 = mask * (N - num)

  dp[d + 1][1] = dp[d][1] + ((K & mask > 0) ? cost1 : cost0)

  if K & mask > 0
    dp[d + 1][0] = dp[d][1] + cost0
  end

  if dp[d][0] != -1
    dp[d + 1][0] = [
      dp[d + 1][0],
      dp[d][0] + [cost0, cost1].max
    ].max
  end
end

puts [dp[D][0], dp[D][1]].max