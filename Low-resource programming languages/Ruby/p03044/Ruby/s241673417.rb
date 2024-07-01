N = gets.to_i
paths = Array.new(N + 1) { Array.new(2) { [] } }

(N-1).times.map do
  u, v, w = gets.split.map(&:to_i)
  paths[v][w % 2] << u
  paths[u][w % 2] << v
end

EVEN = 0
ODD = 1

col = Array.new(N + 1, 0)
1.upto(N) do |n|
  paths[n][EVEN].each do |u|
    col[u] = col[n]
  end
  paths[n][ODD].each do |u|
    col[u] = col[n] == 1 ? 0 : 1
  end
end

1.upto(N) do |n|
  puts col[n]
end