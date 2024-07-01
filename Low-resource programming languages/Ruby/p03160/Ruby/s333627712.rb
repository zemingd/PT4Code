N = gets.to_i
H = gets.split.map(&:to_i)
 
dp = Array.new(N, 0)
1.step(H.size - 1) do |i|
  p1 = i-2 >= 0 ? dp[i-2] + (H[i-2] - H[i]).abs : Float::INFINITY
  p2 = i-1 >= 0 ? dp[i-1] + (H[i-1] - H[i]).abs : Float::INFINITY
  dp[i] = p1 > p2 ? p2 : p1
end
 
puts dp.last