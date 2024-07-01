N,K = gets.split.map &:to_i
H = gets.split.map &:to_i
DP = [0]
 
1.upto(N-1) do |i|
  min = Float::INFINITY
  [0, i-K].max.upto(i-1) do |j|
    cost = (H[i] - H[j]).abs + DP[j]
    min = cost if min > cost
  end
  DP[i] = min
end
 
p DP[-1]