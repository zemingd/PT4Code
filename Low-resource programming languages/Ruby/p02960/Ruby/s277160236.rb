MOD = 1000000007

s = gets.chomp

dp = Array.new(s.length){Array.new(13){0}}

s.length.times do |i|
  13.times do |x|
    r = 0
    if i != 0
      r = dp[i-1][x]
    elsif x == 0
      r = 1
    end

    if s[i] == "?"
      10.times do |y|
        r2 = (x * 10 + y) % 13
        dp[i][r2] += r
        dp[i][r2] %= MOD
      end
    else
      r2 = (x * 10 + s[i].to_i) % 13
      dp[i][r2] += r
      dp[i][r2] %= MOD
    end
  end
end

puts dp[s.length - 1][5]