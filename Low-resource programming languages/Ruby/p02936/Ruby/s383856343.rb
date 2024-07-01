N, Q = gets.split.map(&:to_i)
G = Array.new(N + 1){ [] }
V = Array.new(N + 1, 0)

(1 ... N).each do
  a,b = gets.split.map(&:to_i)
  G[a] << b
  G[b] << a
end

Q.times.each do
  u, x = gets.split.map(&:to_i)
  V[u] += x
end

q = [[1,0]]
used = Array.new(N + 1)
used[1] = true

until q.empty?
  u, x = q.shift
  V[u] += x
  
  G[u].each do |v|
    unless used[v]
      used[v] = true
      q << [v, V[u]]
    end
  end
end

V.shift
puts V * ' '