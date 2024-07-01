MOD = 10 ** 9 + 7

def digits_parade(s)
  dp = Array.new(13) { 0 }
  dp[0] = 1

  mul = 1
  s.reverse.each_char do |c|
    nextDp = Array.new(13) { 0 }
    if c == '?'
      0.upto(9) do |n|
        r = (n * mul) % 13
        0.upto(12) do |i|
          nextDp[(r + i) % 13] += dp[i]
        end
      end
    else
      r = (c.to_i * mul) % 13
      0.upto(12) do |i|
        nextDp[(r + i) % 13] += dp[i]
      end
    end
    mul *= 10
    dp = nextDp
  end

  dp[5] % MOD
end

puts digits_parade(gets.chomp)