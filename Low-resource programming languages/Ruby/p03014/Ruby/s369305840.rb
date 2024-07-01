h, w = gets.split.map(&:to_i)
s = Array.new(h).map{Array.new(w, 0)}
h.times do |i|
  c = 0
  l = 0
  b = gets
  w.times do |j|
    if b[j] == '.'
      l = j if c == 0
      c += 1
    elsif c > 0
      l.upto(j) do |k|
        s[i][k] = c
      end
      c = 0
    end
    if j == w - 1 && c > 0
      0.upto(j) do |k|
        s[i][k] = c
      end
    end
  end
end
ans = 0
w.times do |j|
  c = 0
  l = 0
  h.times do |i|
    if (s[i][j] > 0)
      l = i if c == 0
      c += 1
    elsif c > 0
      l.upto(i) do |k|
        ans = s[k][j] + c if ans < s[k][j] + c
      end
      c = 0
    end
    if i == h - 1 && c > 0
      l.upto(i) do |k|
        ans = s[k][j] + c if ans < s[k][j] + c
      end
    end
  end
end
puts ans - 1