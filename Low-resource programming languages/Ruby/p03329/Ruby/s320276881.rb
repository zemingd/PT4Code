n = gets.to_i

# require 'irb'
nums = [1,6,9,36,81,216,729,1296,6561,7776,46656,59049]
dp = []

12.times do |i|
  dp[i] = []
  n.times do |j|
    if i == 0
      dp[i][j] = j+1
    else
      if (j+1) >= nums[i]
        div = (j+1) / nums[i]
        mod = (j+1) % nums[i]

        if mod == 0
          dp[i][j] = [div, dp[i-1][j]].min
        else
          dp[i][j] = [(div + dp[i][mod-1]), dp[i-1][j]].min
        end
      else
        dp[i][j] = dp[i-1][j]
      end
    end
  end
end

puts dp[-1][-1]