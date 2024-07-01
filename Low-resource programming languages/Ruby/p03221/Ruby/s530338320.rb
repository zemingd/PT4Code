def process(rows)
  years = []
  rows.each do |(pref, year), i|
    years << year
  end
  years.sort!

  rows.each do |(pref, year), i|
    $ids[i] = "%06d%06d" % [pref, years.index(year)+1]
  end
end

$ids = {}
n, m = gets.split.map(&:to_i)
ary = m.times.map { gets.split.map(&:to_i) }.each.with_index.to_a
by_pref = ary.group_by { |(pref, year), i| pref }

by_pref.each_pair do |pref, rows|
  process(rows)
end

m.times do |i|
  puts $ids[i]
end
