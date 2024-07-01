N, M = gets.split.map(&:to_i)
C = Array.new(N + 1) {Array.new(N + 1)}
R = Hash.new {|h, i| h[i] = []}
M.times do
  a, b, c = gets.split.map(&:to_i)
  C[a][b] = c
  R[a] << b
end
 
T = Array.new(N + 1, -Float::INFINITY)
 
def calc(node, step = 0, cost = 0)
  return false if step > N + 1
  return true if cost <= T[node]
  T[node] = cost
  R[node].all? {|x| calc(x, step + 1, cost + C[node][x])}
end
 
puts calc(1) ? T[N] : 'inf'