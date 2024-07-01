n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
INF = Float::INFINITY
cost = Array.new(n+k+10,INF)
cost[0] = 0

n.times do |i|
  for j in 1..k 
    cost[i] = [cost[i], cost[i-k]+(h[i]-h[i-k]).abs].min if i - k >= 0
  end
end

puts cost[n-1]