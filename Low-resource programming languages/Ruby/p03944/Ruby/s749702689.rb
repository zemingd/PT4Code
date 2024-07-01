W, H, N = gets.split.map(&:to_i)
XYAs = readlines.map{|l| l.split.map(&:to_i)}

xmin, xmax = 0, W
ymin, ymax = 0, H
XYAs.each do |x, y, a|
  case a
  when 1; xmin = [x, xmin].max
  when 2; xmax = [x, xmax].min
  when 3; ymin = [y, ymin].max
  when 4; ymax = [y, ymax].min
  end
end
puts (xmax > xmin && ymax > ymin) ? (xmax - xmin)*(ymax - ymin) : 0
