N, K = gets.split(' ').map(&:to_i)
a_list = gets.split(' ').take(N).map(&:to_i)

MAX_DIGIT = 60
dp = Array.new(MAX_DIGIT + 10) { Array.new(2, -1) }
dp[0][0] = 0

(0...MAX_DIGIT).each do |i|
  bit_pos = MAX_DIGIT - i - 1
  kb = K[bit_pos]
  digit_value = 2 ** bit_pos
  one_count = a_list.count { |a| a[bit_pos] == 1 }
  zero_count = N - one_count
  cost0 = one_count * digit_value
  cost1 = zero_count * digit_value

  # lower -> lower
  if dp[i][1] != -1
    dp[i + 1][1] = dp[i][1] + [cost0, cost1].max
  end

  # same -> lower
  if kb == 1
    dp[i + 1][1] =
      [
        dp[i + 1][1],
        dp[i][0] + cost0
      ].max
  end

  # same -> same
  dp[i + 1][0] = dp[i][0] + (kb == 1 ? cost1 : cost0)
end

puts [dp[MAX_DIGIT][0], dp[MAX_DIGIT][1]].max
