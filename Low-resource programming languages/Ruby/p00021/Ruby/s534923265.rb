$<.readlines.drop(1).map {|a| a.split.map(&:to_r)}.each do |x1, y1, x2, y2, x3, y3, x4, y4|
  puts ((x2 - x1) * (y4 - y3) == (x4 - x3) * (y2 - y1) ? "YES" : "NO")
end
