n,w = gets.split.map(&:to_i)
weight = []
value = []
n.times do
    a,b = gets.split.map(&:to_i)
    weight << a
    value << b
end
dp = []
array = Array.new(w+1,0)
n.times do
    dp << Marshal.load(Marshal.dump(array))
end
for i in 0..(n-1)
  (0..w).reverse_each do |j|
        if j - weight[i] >= 0
            dp[i][j] = [dp[i][j] , dp[i-1][j-weight[i]]+value[i]].max
        end
        dp[i][j] = [dp[i][j] , dp[i-1][j]].max
    end
end
puts dp[n-1][w]