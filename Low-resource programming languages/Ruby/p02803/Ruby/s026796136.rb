def min(a,b); a < b ? a : b; end
def max(a,b); a > b ? a : b; end

INF = 1 << 28
H,W = gets.split.map(&:to_i)
V = H * W
G = Array.new(V) { Array.new(V, INF) }
M = H.times.map { gets.chomp }

V.times{|i| G[i][i] = 0 }
W.times.each_cons(2) do |x1,x2|
  H.times do |y|
    i = y * W + x1
    j = y * W + x2
    if M[y][x1] == '.' && M[y][x2] == '.'
      G[i][j] = G[j][i] = 1
    end
  end
end
H.times.each_cons(2) do |y1,y2|
  W.times do |x|
    i = y1 * W + x
    j = y2 * W + x
    if M[y1][x] == '.' && M[y2][x] == '.'
      G[i][j] = G[j][i] = 1
    end
  end
end

V.times do |i|
 V.times do |j|
   V.times do |k|
     G[j][i] = G[i][j] = min(G[i][j], G[i][k] + G[k][j])
   end
 end
end

max_dist = 0
V.times do |i|
  V.times do |j|
    next if i == j
    iy,ix = i.divmod(W)
    jy,jx = j.divmod(W)
    
    next if M[iy][ix] == '#'
    next if M[jy][jx] == '#'
    max_dist = max(max_dist, G[i][j]) if G[i][j] < INF
  end
end
puts max_dist
