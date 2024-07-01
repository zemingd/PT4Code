N, M = gets.split.map(&:to_i)
R = Hash.new {|h, i| h[i] = []}
M.times do
  a, b, c = gets.split.map(&:to_i)
  R[a] << [b, c]
end
         
T = Array.new(N + 1, -Float::INFINITY)
     
def calc(node, step, cost)
  return if step < 0
  T[node] = cost if cost > T[node]
  R[node].each do |b, c|
    calc(b, step - 1, T[node] + c)
  end
end

calc(1, M, 0)
c1 = T[N]
calc(1, M, 0)
c2 = T[N]

puts c1 == c2 ? c1 : 'inf'