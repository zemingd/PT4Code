s = gets.chomp

N = 13

mod = 10**9 + 7

dp = Array.new(s.length + 1) { Array.new(N) { 0 } }

dp[s.length][0] = 1
mul = 1

(s.size - 1).downto(0) do |i|
  c = s[i]

  if c == '?'
    10.times do |j|
      13.times do |k|
        dp[i][(j * mul + k) % N] += dp[i + 1][k]
        dp[i][(j * mul + k) % N] %= mod
      end
    end
  else
    13.times do |k|
      dp[i][(c.to_i * mul + k) % N] += dp[i + 1][k]
      dp[i][(c.to_i * mul + k) % N] %= mod
    end
  end

  mul *= 10
end

puts dp[0][5]
