n,w = gets.chomp.split.map(&:to_i)

dp = [Array.new(w+1, 0)]

0.upto(n-1) do |i|
  part_w, part_v = gets.chomp.split(" ").map(&:to_i)
  dp[i+1] = Array.new(w+1, 0)
  0.upto(w) do |sum_w|
    a = dp[i][sum_w - part_w] + part_v
    b = dp[i][sum_w]
    if sum_w - part_w >= 0 && a > b
      dp[i+1][sum_w] = a
    else
      dp[i+1][sum_w] = b
    end
  end
end

puts dp[n][w]