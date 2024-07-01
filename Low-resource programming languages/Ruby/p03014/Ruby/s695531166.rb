H, W = gets.split.map(&:to_i)
G = H.times.map{ gets.chomp + "#"}
G << ("#" * (W + 1))

X = Array.new(H) do |i|
  Hash.new do |h, j|
    gh = G[i]
    if gh[j] == '#'
      h[j] = 0
    else
      c = 0
      ja = j + 1
      loop {
        break if gh[ja] == '#'
        c += 1
        ja += 1
      }
      for jb in j...ja
        h[jb] = c
      end
      c
    end
  end
end

Y = Array.new(H) do |i|
  Hash.new do |h, j|
    if G[i][j] == '#'
      h[j] = 0
    else
      c = 0
      ia = i + 1
      loop {
        break if G[ia][j] == '#'
        c += 1
        ia += 1
      }
      for ib in i...ia
        Y[ib][j] = c
      end
      c
    end
  end
end

ans = -1
for i in (0...H)
  x = X[i]
  y = Y[i]
  for j in (0...W)
    tmp = x[j] + y[j]
    ans = tmp if tmp > ans 
  end 
end
puts ans + 1