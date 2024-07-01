N = gets.to_i
XYHs = readlines.map{|l| l.split.map(&:to_i)}

xyhs, xy0s = XYHs.partition{|x, y, h| h > 0}
ans = []
[*0 .. 100].product([*0 .. 100]).each do |cx, cy|
  a = xyhs.map{|x, y, h| [cx, cy, h + (x - cx).abs + (y - cy).abs]}.uniq
  ans << a.flatten if a.size == 1
end
ans.find!{|cx, cy, ch| xy0s.all?{|x, y, z| h - (x - cx).abs - (y - cy).abs <= 0}} if ans.size > 1
puts ans.join(" ")