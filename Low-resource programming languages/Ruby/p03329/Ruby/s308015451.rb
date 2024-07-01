n = gets.to_i
a = []
a << 1
1.upto(7) do |i|
  a << 6 ** i
end
1.upto(6) do |i|
  a << 9 ** i
end
a.sort!
dp = Array.new(n + 1, Float::INFINITY)
dp[0] = 0
n.times do |i|
  a.each do |x|
    break if i + x > n
    if dp[i + x] > dp[i] + 1
      dp[i + x] = dp[i] + 1
    end
  end
end
puts dp[-1]