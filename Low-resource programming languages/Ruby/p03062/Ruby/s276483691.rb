# https://atcoder.jp/contests/abc125/tasks/abc125_d
n = gets.to_i
$nums = gets.split.map(&:to_i)

DP = [Array.new(10**7, nil), Array.new(10**7, nil)]
DP[0][0] = 0
DP[1][0] = -1 * 10**9


def dp(idx, reversed)
  idx = 0 if idx < 0
  unless DP[reversed][idx].nil?
    return DP[reversed][idx]
  end
  num = $nums[idx - 1]

  res = nil
  if reversed == 1
    res = [dp(idx - 1, 0) - num, dp(idx - 1, 1) + num].max
  else
    res = [dp(idx - 1, 0) + num, dp(idx - 1, 1) - num].max
  end
  # puts [idx, res]
  
  DP[reversed][idx] = res;
  return res;
end

current_max = 0
# (n - 1).times do |idx|
#   no_reversed = nums[idx] + nums[idx + 1]
#   reversed = -1 * no_reversed

#   current_max = [current_max + no_reversed, current_max + reversed].max
# end

puts [dp(n, 0), dp(n, 1)].max

