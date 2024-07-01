n = gets.to_i
h = gets.split.map(&:to_i)

cost = Array.new(n+100, 1000000)
cost[0] = 0

0.upto(n-1) do |i|
  cost[i+1] = [cost[i+1], cost[i]+(h[i+1]-h[i]).abs].min unless h[i+1].nil?
  cost[i+2] = [cost[i+2], cost[i]+(h[i+2]-h[i]).abs].min unless h[i+2].nil?
end

puts cost[n-1]