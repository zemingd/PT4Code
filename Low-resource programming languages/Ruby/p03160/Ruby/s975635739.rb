n = gets.to_i
h = gets.split.map(&:to_i)

cost = []
cost[0] = 0
cost[1] = (h[0] - h[1]).abs

1.upto(n-2) do |i|
  cost[i+1] = [cost[i]+(h[i+1]-h[i]).abs, cost[i-1]+(h[i+1]-h[i-1]).abs].min
end

puts cost[n-1]