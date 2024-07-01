h, w = gets.split.map(&:to_i)
sw = Array.new(h + 1).map{Array.new(w + 1, 0)}
sh = Array.new(h + 1).map{Array.new(w + 1, 0)}
1.upto(h) do |i|
  b = gets
  c = 0
  d = Array.new(w, 0)
  1.upto(w) do |j|
    if b[j - 1] == '.'
      c += 1
      d[j] = c
    elsif c > 0
      c = 0
      d[j] = 0
    end
    if j == w && c > 0
      d[j] = c
    end
  end
  c = d[w]
  w.downto(1) do |j|
    if d[j] == 0
      c = 0
    elsif c == 0
      c = d[j]
    end
    sw[i][j] = c
  end
  1.upto(w) do |j|
  end
end
1.upto(w) do |j|
  c = 0
  d = Array.new(h, 0)
  1.upto(h) do |i|
    if sw[i][j] != 0
      c += 1
      d[i] = c
    else
      c = 0
      d[i] = 0
    end
    if j == h && c > 0
      d[i] = c
    end
  end
  h.downto(1) do |i|
    if d[i] == 0
      c = 0
    elsif c == 0
      c = d[i]
    end
    sh[i][j] = c
  end
end
ans = 0
1.upto(h) do |i|
  1.upto(w) do |j|
    ans = sh[i][j] + sw[i][j] if ans < sh[i][j] + sw[i][j] 
  end
end
puts ans - 1