N,W = gets.split.map &:to_i
IW,IV = Array.new(N){gets.split.map &:to_i}.transpose
DP = Array.new(N+1){Array.new(W+1,0)}

N.times do |i|
  0.upto(W) do |j|
    if j >= IW[i]
      a = DP[i][j]
      b = DP[i][j - IW[i]] + IV[i]
      DP[i+1][j] = a > b ? a : b
    else
      DP[i+1][j] = DP[i][j]
    end
  end
end
p DP[N][W]