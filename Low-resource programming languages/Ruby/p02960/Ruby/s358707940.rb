S = gets.chomp.reverse!

n = 13
# dp[k] -> 13で割った余りがkのパターン数
dp = Array.new(n) { 0 }
dp[0] = 1

mod = 10**9 + 7
mul = 1

S.chars.each do |char|
  next_dp = Array.new(n) { 0 }

  if char == '?'
    10.times do |num|
      n.times do |k|
        rem = (num * mul + k) % n
        next_dp[rem] += dp[k]
        next_dp[rem] %= mod
      end
    end
  else
    num = char.to_i
    n.times do |k|
      rem = (num * mul + k) % n
      next_dp[rem] += dp[k]
      next_dp[rem] %= mod
    end
  end

  mul *= 10
  mul %= n
  dp = next_dp
end

puts dp[5]