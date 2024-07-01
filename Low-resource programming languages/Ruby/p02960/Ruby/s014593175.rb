MOD = 1_000_000_007

s = gets.rstrip

# count div 13
dp = Array.new(13, 0)
dp[0] = 1
newdp = Array.new(13, 0)

s.length.times do |i|
  if s[i] == '?'
    newdp.fill(0)

    10.times do |x|
      13.times do |i|
        newdp[(10 * i + x) % 13] += dp[i]
      end
    end
    newdp.each_with_index {|x, i|
      dp[i] = x % MOD
    }
  else
    digit = s[i].to_i
    newdp.fill(0)

    13.times do |i|
      newdp[(10 * i + digit) % 13] = dp[i]
    end
    newdp.each_with_index {|x, i|
      dp[i] = x % MOD
    }
  end
end

p dp[5]
