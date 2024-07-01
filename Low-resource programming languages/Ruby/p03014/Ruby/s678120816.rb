h, w = gets.split.map(&:to_i)
s = Array.new(h + 1).map{Array.new(w + 1, 0)}
1.upto(h) do |i|
  c = 0
  l = 1
  b = gets.chomp.bytes
  1.upto(w) do |j|
    if b[j - 1] == 46
      l = j if c == 0
      c += 1
    elsif c > 0
      s[i][l..j - 1] = Array.new(j - l, c)
      c = 0
    end
    if j == w && c > 0
      s[i][l..j] = Array.new(j - l + 1, c)
    end
  end
end
ans = 0
1.upto(w) do |j|
  c = 0
  l = 1
  1.upto(h) do |i|
    if (s[i][j] > 0)
      l = i if c == 0
      c += 1
    elsif c > 0
      l.upto(i - 1) do |k|
        ans = s[k][j] + c if ans < s[k][j] + c
      end
      c = 0
    end
    if i == h && c > 0
      l.upto(i) do |k|
        ans = s[k][j] + c if ans < s[k][j] + c
      end
    end
  end
end
puts ans - 1