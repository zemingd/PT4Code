n, k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

h.unshift(0)
costs = Array.new(n+1, 10000000000000)
costs[0] = 0
costs[1] = 0

2.upto(n) do |i|
  1.upto(k) do |t|
    next if i - t < 1
    cost = costs[i-t] + (h[i] - h[i-t]).abs
    costs[i] = cost if cost < costs[i]
  end
end
p costs[n]
