N = gets.chomp.to_i
X = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

# Calculate in greedy way.
minX = X.min
maxX = X.max

minCost = 10000000
(minX.upto(maxX)).each do |p|
  cost = 0
  0.upto(N-1).each do |i|
    cost += (X[i] - p) * (X[i] - p) 
  end
  if (cost < minCost)
    minCost = cost
  end
end

p minCost
    