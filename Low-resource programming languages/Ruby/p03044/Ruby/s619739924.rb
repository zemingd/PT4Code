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
begin
  bzc = vtx.count{|v| v == 0}
  (1..N).each{|i|
    next if vtx[i] == 0
    Se[i].select{|j| vtx[j] == 0}.each{|k| vtx[k] = vtx[i]}
    So[i].select{|j| vtx[j] == 0}.each{|k| vtx[k] = -vtx[i]}
  }
  azc = vtx.count{|v| v == 0}
end while(azc > 1 && azc < bzc)

(1..N).each{|i|
  puts vtx[i] == 1 ? '1' : '0'
}
