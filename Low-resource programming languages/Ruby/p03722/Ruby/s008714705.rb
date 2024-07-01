N, M = gets.split.map(&:to_i)
R = Hash.new {|h, i| h[i] = []}
M.times do
a, b, c = gets.split.map(&:to_i)
  R[a] << [b, c]
end

T = Array.new(N + 1, -Float::INFINITY)

def calc(node, step = 0, cost = 0, n_pass = 0)
  return true if cost <= T[node]
  return false if node == N && (n_pass == 1 || step >= N)
  return true if step >= 2 * N
  T[node] = cost
  np = node == N ? n_pass + 1 : n_pass
  R[node].all? {|b, c| calc(b, step + 1, cost + c, np)}
end

puts calc(1) ? T[N] : 'inf'