W, H, N = gets.split.map(&:to_i)
xyas = N.times.map { gets.split.map(&:to_i) }
xmin = 0
xmax = W
ymin = 0
ymax = H
xyas.each do |(x, y, a)|
  case a
  when 1
    xmin = x if x > xmin
  when 2
    xmax = x if x < xmax
  when 3
    ymin = y if y > ymin
  when 4
    ymax = y if y < ymax
  end
end
ans = [xmax - xmin, 0].max * [ymax - ymin, 0].max
puts ans
