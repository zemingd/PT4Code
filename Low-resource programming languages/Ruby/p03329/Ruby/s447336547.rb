n = gets.to_i

dp = Array.new(n + 1, 100000)
dp[0] = 0

m = [1]
x = 6
while x < n do
  m << x
  x *= 6
end
x = 9
while x < n do
  m << x
  x *= 9
end

(1..n).each do |i|
  m.each do |j|
    if i - j >= 0
      dp[i] = [dp[i], dp[i - j] + 1].min
    end
  end
end

puts dp[n]
