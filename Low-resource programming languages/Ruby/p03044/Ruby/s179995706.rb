N = gets.to_i
edges = {}

N.pred.times {
  u, v, w = gets.split(' ').map(&:to_i)
  edges[u] ||= {}
  edges[u][v] = w
  edges[v] ||= {}
  edges[v][u] = w
}

def flip(c)
  c == 0 ? 1 : 0
end

colors = Array.new(N)

colors[0] = 0
nexts = [1]
loop do
  break if nexts.empty?

  nn = []
  nexts.each do |i|
    c = colors[i.pred]
    es = edges[i]
    es.keys.each do |j|
      next unless colors[j.pred].nil?

      cc = es[j] % 2 == 0 ? c : flip(c)
      colors[j.pred] = cc

      nn.push(j)
    end
  end
  nexts = nn
end

puts colors
