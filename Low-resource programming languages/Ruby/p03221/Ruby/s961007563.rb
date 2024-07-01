years_by_pref = Hash.new { [] }
n, m = gets.split.map(&:to_i)
ary = m.times.map { gets.split.map(&:to_i) }
ary.each do |pref, year|
  years_by_pref[pref] += [year]
end

year_index_by_pref = years_by_pref.map { |key,val| [key, val.sort.map.with_index.to_h] }.to_h

ary.each do |pref, year|
  puts "%06d%06d" % [pref, year_index_by_pref[pref][year] + 1]
end
