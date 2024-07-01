N,M = gets.split.map(&:to_i)
D = Array.new(N+1,0)
M.times do
  u,v = gets.split.map(&:to_i)
  D[u] += 1
  D[v] += 1
end
puts (1 .. N).map{|i| D[i] }