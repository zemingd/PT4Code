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
  dp = Array.new(n, nil)
  dp[0] = 0
  1.upto(n) do |i|
    nums.each do |num|
      j = i - MAP[num]
      next if j < 0 || dp[j].nil?
      dp[i] = [dp[i].to_i, dp[j] + 1].max
    end
  end

  remain_length = dp[n]
  ans = 0
  match = n
  while match > 0
    nums.reverse_each do |num|
      if match - MAP[num] >= 0 && dp[match - MAP[num]] == remain_length - 1
        ans = ans * 10 + num
        match -= MAP[num]
        remain_length -= 1
        break
      end
    end
  end
  ans
end

n, m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

puts match_matching(n, nums.sort)