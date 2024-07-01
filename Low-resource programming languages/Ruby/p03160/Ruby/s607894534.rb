# もらうDP

n = gets.to_i
h = gets.split.map(&:to_i)
 
cost = Array.new(n+100, 1000000)
cost[0] = 0
 
0.upto(n-1) do |i|
  cost[i] = [cost[i], cost[i-1]+(h[i]-h[i-1]).abs].min if i - 1 >= 0
  cost[i] = [cost[i], cost[i-2]+(h[i]-h[i-2]).abs].min if i - 2 >= 0
end
 
puts cost[n-1]