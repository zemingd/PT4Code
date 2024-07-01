H, W = gets.split.map(&:to_i)
G = H.times.map{ gets.chomp + "#"}
G << ("#" * (W + 1))

X = Array.new(H) do |i|
  Hash.new do |h, j|
      c = 0
      ja = j + 1
      loop {
        break if G[i][ja] == '#'
        c += 1
        ja += 1
      }
      jb = j + 1
      loop {
        break if jb == ja 
        h[jb] = c
        jb += 1
      }
      c
  end
end

Y = Array.new(H) do |i|
  Hash.new do |h, j|
      c = 0
      ia = i + 1
      loop {
        break if G[ia][j] == '#'
        c += 1
        ia += 1
      }
      ib = i + 1
      loop {
        break if ib == ia 
        Y[ib][j] = c
        ib += 1
      }
      c
  end
end

ans = -1
for i in (0..H)
  for j in (0..W)
    next if G[i][j] == '#'
    tmp = X[i][j] + Y[i][j]
    ans = tmp if tmp > ans 
  end 
end
puts ans + 1

