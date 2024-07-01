_n, m = gets.split.map(&:to_i)

ken = Hash.new {|hash, key| hash[key] = [] }

data = m.times.map.with_index do |i|
  p, y = gets.split.map(&:to_i)
  ken[p] << [i, y]
  [p, y]
end

ken.each do |p, value|
  value
    .sort_by(&:last)
    .each.with_index(1) {|(data_index, _year), order| data[data_index][1] = order }
end

data.each {|p, o| puts "%06d%06d" % [p, o] }
