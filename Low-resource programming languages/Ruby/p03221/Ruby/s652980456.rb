# n 県数
# m 市数
n, m = gets.split.map(&:to_i)

ken = {}
data = m.times.map.with_index do |i|
  p, y = gets.split.map(&:to_i)
  ken[p] ||= []
  ken[p] << [i, y]
  [p, y]
end

# pp data
pp ken

ken.each do |p, value|
  value
    .sort_by {|(data_index, year)|  year } # sort with year
    .each.with_index(1) do |(data_index, year), order|
      # pp [data_index, year, order]

      # pp [p, data_index, order]
      # pp ({ ken: p, data_index: data_index, order: order, year: data[data_index][1] })

      data[data_index][2] = order
    end
end

data.each do |(p, _y, o)|
  puts "%06d%06d" % [p, o]
end
