n = gets.chomp.to_i
u = []
b = []
g = []
(n+1).times do |i|
  g[i] = []
end
(n-1).times do |i|
  u[i] = gets.chomp.split.map(&:to_i)
  g[u[i][0]] << [u[i][1], u[i][2]]
  g[u[i][1]] << [u[i][0], u[i][2]]
end
b[1] = 0
cnt = 1
while cnt < n
  (n+1).times do |i|
    next if i == 0
    next if !b[i]
    g[i].each do |gi|
      b[gi[0]] = (b[i] + gi[1]) % 2
      cnt += 1
      g[i].delete(gi)
      g[gi[0]].each do |ggi|
        if ggi[0] == i
          g[gi[0]].delete(ggi)
        end
      end
    end
  end
end

puts b[1..n]
