h, w = gets.split.map(&:to_i)

d = Array.new(h){ gets.chomp.bytes }

ary1 = []
d.map do |row|
  row.chunk{ _1 }.map do |c, ch|
    ary1 += c == 46 ? [ch.size] * ch.size : [0] * ch.size
  end
end

ary2 = []
d.transpose.map do |row|
  row.chunk{ _1 }.map do |c, ch|
    ary2 += c == 46 ? [ch.size] * ch.size : [0] * ch.size
  end
end

ans = 0
h.times do |i|
  w.times do |j|
    ans = ary1[i * h + j] + ary2[i + j * h] if ans < ary1[i * h + j] + ary2[i + j * h]
  end
end
puts ans - 1