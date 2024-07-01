h, w = gets.split.map(&:to_i)

d = Array.new(h){ gets.chomp.bytes }

ary1 = []
d.map do |row|
  ary1 << row.chunk{ _1 }.map{ |c, ch| l = ch.size; v = (c == 46) ? l : 0; Array.new(l, v) }.flatten
end

ary2 = []
d.transpose.map do |row|
  ary2 << row.chunk{ _1 }.map{ |c, ch| l = ch.size; v = (c == 46) ? l : 0;  Array.new(l, v) }.flatten
end
ary3 = ary2.transpose
ans = 0
h.times do |i|
  w.times do |j|
    ans = ary1[i][j] + ary3[i][j] if ans < ary1[i][j] + ary3[i][j]
  end
end
puts ans - 1