N, M = STDIN.gets.chomp.split(" ").map(&:to_i)

PYs = (1..M).map{|i| STDIN.gets.chomp.split(" ").map(&:to_i)}

sorted_y_groupby_p = PYs.inject({}) do |acc, py|
  p, y = py
  acc[p] = [] if acc[p].nil?
  acc[p].push(y)
  acc
end.each_value do |v|
  v.sort!
end

PYs.each do |py|
  p, y = py

  ys = sorted_y_groupby_p[p]
  index = ys.index(y)

  puts sprintf("%06d%06d", p, index + 1)
end
