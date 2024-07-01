H, W = gets.strip.split.map(&:to_i)
s = []
H.times do
  s << gets.strip.bytes
end

a = Array.new(H, 0)
a.map!{|_| Array.new(W, 0)}

b = Array.new(H, 0)
b.map!{|_| Array.new(W, 0)}

H.times do |i|
  l = 0
  W.times do |j|
    if s[i][j] == 35
      l.upto(j-1) {|_| a[i][_] = j-l}
      l = j + 1
    elsif j == W - 1
      l.upto(j) {|_| a[i][_] = j-l+1}
    end
  end
end

W.times do |j|
  l = 0
  H.times do |i|
    if s[i][j] == 35
      l.upto(i-1) {|_| b[_][j] = i-l}
      l = i + 1
    elsif i == H - 1
      l.upto(i) {|_| b[_][j] = i-l+1}
    end
  end
end

c_max = 0
H.times do |i|
  W.times do |j|
    c = a[i][j] + b[i][j]
    c_max = c_max > c ? c_max : c
  end
end

puts c_max -1