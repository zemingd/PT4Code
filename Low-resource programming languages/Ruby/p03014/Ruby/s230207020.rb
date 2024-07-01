h, w = gets.split.map(&:to_i)

d = Array.new(h){ gets.chomp.bytes }

ary1 = []
d.map do |row|
  suba = []
  f = row[0] == 46 ? true : false
  row.chunk{ _1 }.map do |_, ch|
    suba += f ? [ch.size] * ch.size : [0] * ch.size
    f = !f
  end
  ary1 << suba
end

ary2 = []
d.transpose.map do |row|
  suba = []
  f = row[0] == 46 ? true : false
  row.chunk{ _1 }.map do |_, ch|
    suba += f ? [ch.size] * ch.size : [0] * ch.size
    f = !f
  end
  ary2 << suba
end

ans = 0
h.times do |i|
  w.times do |j|
    ans = ary1[i][j] + ary2[j][i] if ans < ary1[i][j] + ary2[j][i]
  end
end
puts ans - 1