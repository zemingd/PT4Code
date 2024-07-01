N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
bit_len = (10 ** 12).to_s(2).size
dp = Array.new(bit_len + 1) { Array.new(2, nil) }
dp[0][0] = 0

bit_len.times do |i|
  mask = 1 << (bit_len - i - 1)

  num = 0
  A.each { |a| num += 1 unless (a & mask).zero? }

  cost0 = mask * num
  cost1 = mask * (N - num)

  if dp[i][1]
    dp[i + 1][1] = [dp[i + 1][1].to_i, dp[i][1] + [cost0, cost1].max].max
  end

  if dp[i][0]
    unless (K & mask).zero?
      dp[i + 1][1] = [dp[i + 1][1].to_i, dp[i][0] + cost0].max
    end
  end

  if dp[i][0]
    unless (K & mask).zero?
      dp[i + 1][0] = [dp[i + 1][0].to_i, dp[i][0] + cost1].max
    else
      dp[i + 1][0] = [dp[i + 1][0].to_i, dp[i][0] + cost0].max
    end
  end
end

puts [dp[bit_len][0].to_i, dp[bit_len][1].to_i].max
