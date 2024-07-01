$N = gets.to_i
$H = gets.split.map(&:to_i)
$INF = 1 << 100

class Node
  attr_accessor :min_cost, :hight

  def initialize(h)
    @hight = h
    @min_cost = $INF

    #p @hight
  end
end

dp = Array.new($N){|i| Node.new($H[i])}
dp[0].min_cost = 0
dp[1].min_cost = (dp[1].hight - dp[0].hight).abs

i = 0
while i+2 < $N
  dp[i+2].min_cost = [(dp[i+2].hight - dp[i+1].hight).abs+dp[i+1].min_cost, (dp[i+2].hight - dp[i].hight).abs+dp[i].min_cost].min
  i += 1
end

puts dp[$N-1].min_cost