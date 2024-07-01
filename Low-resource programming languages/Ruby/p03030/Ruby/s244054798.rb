N = gets.to_i
sp_list = N.times.map { gets.chomp.split }
group = sp_list.map.with_index do |(s, p), i|
  [s, p, i]
end.group_by { |(s, _, _)| s }
group.keys.sort.each do |s|
  sp_list = group[s]
  sorted = sp_list.sort_by { |(_, p, _)| -(p.to_i) }
  sorted.each do |(_, _, i)|
    puts(i + 1)
  end
end
