MOD = 1_000_000_007

s = gets.rstrip

# count div 13
dp = Array.new(13, 0)
dp[0] = 1
newdp = Array.new(13, 0)

md = Array.new(130) {|i| [i % 13, i / 10] }


s.length.times do |i|
  if s[i] == '?'
    newdp.fill(0)

    sum = dp.reduce(0, :+)

    md.each do |i, j|
      newdp[i] += dp[j]
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
