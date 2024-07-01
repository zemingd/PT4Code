MAP = {
  1 => 2,
  2 => 5,
  3 => 5,
  4 => 4,
  5 => 5,
  6 => 6,
  7 => 3,
  8 => 7,
  9 => 6,
}


def match_matching(n, nums)
  dp = Array.new(n + 10) { nil }
  dp[0] = 0
  n.times do |i|
    nums.each do |num|
      next unless dp[i]
      dp[i + MAP[num]] = [dp[i + MAP[num]].to_i, dp[i] * 10 + num].max
    end
  end
  dp[n]
end

n, m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

puts match_matching(n, nums.sort)