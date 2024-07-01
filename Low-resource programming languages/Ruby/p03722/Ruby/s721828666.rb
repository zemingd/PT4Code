N, M = gets.split.map(&:to_i)
C = Array.new(N + 1) {Array.new(N + 1)}
R = Hash.new {|h, i| h[i] = []}
M.times do
  a, b, c = gets.split.map(&:to_i)
  C[a][b] = c
  R[a] << b
end
     
T = Array.new(N + 1, -Float::INFINITY)
 
def calc(node, step = 0, cost = 0, n_pass = 0)
  return true if cost <= T[node]
  return false if n_pass >= 2
  return false if node == N && step > N
  return true if step >= 2 * N
  T[node] = cost
  np = (node == N ? n_pass + 1 : n_pass)
  R[node].all? {|x| calc(x, step + 1, cost + C[node][x], np)}
end
     
puts calc(1) ? T[N] : 'inf'