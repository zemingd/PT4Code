MOD = 1_000_000_007

s = gets.rstrip

# count div 13
dp = Array.new(13, 0)
dp[0] = 1

s.length.times do |i|
  if s[i] == '?'
    newdp = Array.new(13, 0)

    10.times do |x|
      13.times do |i|
        newdp[(10 * i + x) % 13] += dp[i]
      end
    end
    dp = newdp.map {|x| x % MOD }
  else
    digit = s[i].to_i
    newdp = Array.new(13)

    13.times do |i|
      newdp[(10 * i + digit) % 13] = dp[i]
    end
    dp = newdp
  end
end

p dp[5]
