N, M = gets.split.map(&:to_i)
R = Hash.new {|h, i| h[i] = []}
M.times do
  a, b, c = gets.split.map(&:to_i)
  R[a] << [b, c]
end
     
T = Array.new(N + 1, -Float::INFINITY)
 
def calc(node, step = 0, cost = 0, n_pass = 0)
  return true if cost <= T[node] 
  return false if n_pass >= 2
  return false if node == N && step > N
  return true if step >= 2 * N
  T[node] = cost
  np = (node == N ? n_pass + 1 : n_pass)
  R[node].all? {|x| calc(x[0], step + 1, cost + x[1], np)}
end
     
puts calc(1) ? T[N] : 'inf'