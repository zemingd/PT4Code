# https://atcoder.jp/contests/abc125/tasks/abc125_d
n = gets.to_i
$nums = gets.split.map(&:to_i)

def dp(idx, reversed)
  if idx == 0
    return reversed ? - 1 * 10 ** 9 : 0
  end
  num = $nums[idx - 1]
  
  if reversed
    return [dp(idx - 1, false) - num, dp(idx - 1, true) + num].max
  else
    return [dp(idx - 1, false) + num, dp(idx - 1, true) - num].max
  end
end

current_max = 0
# (n - 1).times do |idx|
#   no_reversed = nums[idx] + nums[idx + 1]
#   reversed = -1 * no_reversed

#   current_max = [current_max + no_reversed, current_max + reversed].max
# end

puts [dp(n, false), dp(n, true)].max