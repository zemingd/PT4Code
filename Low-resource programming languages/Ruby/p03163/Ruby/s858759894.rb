n, w = gets.split(' ').map!(&:to_i)

weights = []
values = []

n.times do
  weight, value = gets.split(' ').map!(&:to_i)
  weights << weight
  values << value
end


# dp = Array.new(n) { Array.new(w + 1, 0) }
dp = Hash.new{ |hash, key| hash[key] = Array.new(w + 1, 0) }
(0...n).each do |i|
  (0..w).each do |j|
    if j >= weights[i]
      dp[i+1][j] = [dp[i+1][j], dp[i][j - weights[i]] + values[i]].max
    end
    dp[i+1][j] = [dp[i][j], dp[i+1][j]].max
  end
end

p dp[n][w]
