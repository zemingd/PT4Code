_n, m = gets.split.map(&:to_i)

data = m.times.map.with_index do |i|
  p, y = gets.split.map(&:to_i)
  [p, i, y]
end

ken = data.group_by(&:first)

ken.each_value do |value|
  value
    .sort_by(&:last)
    .each.with_index(1) {|(_p, data_index, _y), order| data[data_index][2] = order }
end

data.each {|p, _i, y| puts "%06d%06d" % [p, y] }
