N,K=gets.split.map(&:to_i)
h=gets.split.map(&:to_i)
INF=Float::INFINITY
dp=Array.new(100100){INF}
dp[0]=0

(0...N).each do |i|
  (1..K).each do |j|
    if i+j<N
      dp[i+j] = dp[i]+(h[i]-h[i+j]).abs if dp[i+j] > dp[i]+(h[i]-h[i+j]).abs
    end
  end
end

puts dp[N-1]