h, w = gets.split.map(&:to_i)

d = Array.new(h){ gets.chomp.bytes }

ary1 = []
d.map do |row|
  suba = []
  row.chunk{ _1 }.map do |c, ch|
    if c == 46
      suba += [ch.size] * ch.size
    else
      suba += [0] * ch.size
    end
  end
  ary1 << suba
end

ary2 = []
d.transpose.map do |row|
  suba = []
  row.chunk{ _1 }.map do |c, ch|
    if c == 46
      suba += [ch.size] * ch.size
    else
      suba += [0] * ch.size
    end
  end
  ary2 << suba
end
ary3 = ary2.transpose
ans = 0
h.times do |i|
  w.times do |j|
    ans = ary1[i][j] + ary3[i][j] if ans < ary1[i][j] + ary3[i][j]
  end
end
puts ans - 1