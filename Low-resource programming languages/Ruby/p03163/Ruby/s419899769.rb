n, W = gets.chomp.split.map(&:to_i)

dp = Array.new(W+1,0)

n.times do |i|
  w, v = gets.chomp.split.map(&:to_i)
  W.downto(0).each do |weight|
    if w <= weight
      dp[weight] = dp[weight-w] + v if dp[weight] < dp[weight-w] + v
    end
  end
end

# dp.each{|line| p line}
# p dp
puts dp[W]