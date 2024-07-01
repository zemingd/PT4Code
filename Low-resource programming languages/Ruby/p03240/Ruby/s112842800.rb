N = gets.to_i
XYHs = readlines.map{|l| l.split.map(&:to_i)}

xyhs = XYHs.reject{|x, y, h| h.zero?}
ans = []
[*0 .. 100].product([*0 .. 100]).find do |cx, cy|
  ans = xyhs.map{|x, y, h| [cx, cy, h + (x - cx).abs + (y - cy).abs]}.uniq
  ans.size == 1
end
puts ans.join(" ")