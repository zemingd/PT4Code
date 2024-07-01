n, k = gets.split.map &:to_i 
h = gets.split.map &:to_i 

dp = [0]

1.upto(n - 1) do |i|
  min = Float::INFINITY 
  [0, i - k].max.upto(i - 1) do |j|
    d = (h[i] - h[j]).abs + dp[j]
    min = d if min > d
  end
  dp[i] = min
end

puts dp[- 1]