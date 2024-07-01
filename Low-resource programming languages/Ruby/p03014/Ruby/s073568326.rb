h, w = gets.split.map(&:to_i)
s = Array.new(h + 1).map{Array.new(w + 1, 0)}
(1..h).map do |i|
  c = 0
  l = 1
  b = gets.chomp.bytes
  (1..w).map do |j|
    if b[j - 1] == 46
      l = j if c == 0
      c += 1
    elsif c > 0
      (l...j).map do |k|
        s[i][k] = c
      end
      c = 0
    end
    if j == w && c > 0
      (l..j).map do |k|
        s[i][k] = c
      end
    end
  end
end
ans = 0
(1..w).map do |j|
  c = 0
  l = 1
  (1..h).map do |i|
    if (s[i][j] > 0)
      l = i if c == 0
      c += 1
    elsif c > 0
      (l...i).map do |k|
        ans = s[k][j] + c if ans < s[k][j] + c
      end
      c = 0
    end
    if i == h && c > 0
      (l..i).map do |k|
        ans = s[k][j] + c if ans < s[k][j] + c
      end
    end
  end
end
puts ans - 1