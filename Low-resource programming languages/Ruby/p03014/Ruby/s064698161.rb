h, w = gets.split.map(&:to_i)
s = []
h.times do
  c = 0
  l = 0
  suba = []
  b = gets.chomp.bytes
  w.times do |i|
    if b[i] == 46
      l = i if c.zero?
      c += 1
    elsif c > 0
      suba += Array.new(i - l, c)
      c = 0
      suba += [0]
    else
      suba += [0]
    end
  end
  suba += Array.new(w - l, c) if c > 0
  s << suba
end
ans = 0
w.times do |j|
  c = 0
  l = 0
  h.times do |i|
    if s[i][j] > 0
      l = i if c.zero?
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