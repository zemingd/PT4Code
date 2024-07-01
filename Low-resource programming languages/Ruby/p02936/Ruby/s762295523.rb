N, Q = gets.split.map(&:to_i)
G = Array.new(N + 1){[]}
(N - 1).times do
  a, b = gets.split.map(&:to_i)
  G[a] << b
end

@cs = Array.new(N + 1, 0)
Q.times do
  p, x = gets.split.map(&:to_i)
  @cs[p] += x
end
q = [1]
while !q.empty?
  i = q.pop
  c = @cs[i]
  G[i].each do |j|
    @cs[j] += c
    q << j
  end
end
puts @cs.drop(1).join(' ')