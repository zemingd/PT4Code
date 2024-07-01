N, M = gets.split.map(&:to_i)
pyis = M.times.map.with_index { |i| gets.split.map(&:to_i) + [i] }

group = pyis.group_by(&:first)
sorted = group.flat_map do |p, v|
  v.sort_by { |(_, y, _)| y }.map.with_index do |(_, _, i), j|
    [i, "#{p.to_s.rjust(6, '0')}#{(j + 1).to_s.rjust(6, '0')}"]
  end
end.sort_by(&:first)
sorted.each do |(_, id)|
  puts id
end
