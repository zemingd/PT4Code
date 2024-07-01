n, m = gets.split(' ').map(&:to_i)
cities = m.times.map {|i| gets.split(' ').map(&:to_i) }
grouped = cities.group_by {|city| city[0] }
grouped.each do |pref, cs|
  cs.sort! {|a, b| a[1] <=> b[1] }.each.with_index do |c, i|
    c << i + 1
  end
end

cities.each do |c|
  puts "%06d%06d" % [c[0], c[2]]
end
