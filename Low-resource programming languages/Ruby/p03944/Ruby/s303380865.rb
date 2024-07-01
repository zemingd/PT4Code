W, H, N = gets.split.map(&:to_i)
XYAs = readlines.map{|l| l.split.map(&:to_i)}

xmin, xmax = 0, W
ymin, ymax = 0, H
XYAs.each do |x, y, a|
  case a
  when 1; xmin = x
  when 2; xmax = x
  when 3; ymin = y
  when 4; ymax = y
  end
end
puts [(xmax - xmin)*(ymax - ymin), 0].max
