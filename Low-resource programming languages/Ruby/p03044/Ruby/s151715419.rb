N = gets.to_i
Se = []
So = []
(N + 1).times{|i| So << []; Se << []}
(N - 1).times{|i|
  u, v, w = gets.chomp.split(" ").map(&:to_i);
  w.even? ? (Se[u] << v; Se[v] << u) : (So[u] << v; So[v] << u)
}

vtx = Array.new(N + 1, 0)
vtx[1] = 1
q = [1]
while(q.size > 0) do
  v = q.shift
  Se[v].select{|i| vtx[i] == 0}.each{|j| vtx[j] = vtx[v];  q.push(j)}
  So[v].select{|i| vtx[i] == 0}.each{|j| vtx[j] = -vtx[v]; q.push(j)}
end

(1..N).each{|i|
  puts vtx[i] == 1 ? '1' : '0'
}
