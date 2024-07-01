N, M = gets.chomp.split(' ').map(&:to_i)
pref_city_list =
  M.times.map.with_index { |i| gets.chomp.split(' ').map(&:to_i) + [i] }
group = pref_city_list.group_by(&:first)
answer = group.flat_map do |_, v|
  v.sort_by { |(_, year, _)| year }
   .map.with_index do |(pref, _, i), ii|
     [pref.to_s.rjust(6, '0') + (ii + 1).to_s.rjust(6, '0'), i]
   end
end
.sort_by { |(_, i)| i }
.map(&:first)
puts answer.join("\n")
