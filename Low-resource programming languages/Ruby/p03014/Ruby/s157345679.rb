h, w = gets.split.map(&:to_i)
s = Array.new(h + 1).map{Array.new(w + 1, 0)}
1.upto(h) do |i|
  c = 0
  l = 1
  b = gets.split('').map(&:to_s)
  1.upto(w) do |j|
    if b[j - 1] == '.'
      l = j if c == 0
      c += 1
    elsif c > 0
      l.upto(j - 1) do |k|
        s[i][k] = c
      end
      c = 0
      s[i][j] = 0
    else
      s[i][j] = 0
    end
    if j == w && c > 0
      l.upto(j) do |k|
        s[i][k] = c
      end
    end
  end
end
1.upto(w) do |j|
  c = 0
  l = 1
  1.upto(h) do |i|
    if (s[i][j] > 0)
      l = i if c == 0
      c += 1
    elsif c > 0
      l.upto(i - 1) do |k|
        s[k][j] += c
      end
      c = 0
    end
    if i == h && c > 0
      l.upto(i) do |k|
        s[k][j] += c
      end
    end
  end
end
ans = 0
1.upto(h) do |i|
  1.upto(w) do |j|
    ans = s[i][j] if ans < s[i][j]
  end
end
puts ans - 1