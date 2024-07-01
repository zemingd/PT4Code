N = gets.to_i
A = gets.split.map(&:to_i)

groups = []
gi = 0
A.each do |a|
  groups[gi] ||= []
  if a == 0
    gi += 1
    next
  end
  groups[gi] << a
end

ans = 0
groups_size = groups.size
groups.each_with_index do |group, idx|
  minus_count = group.count { |a| a < 0 }
  if minus_count.odd? && gi == 0
    sorted_group = group.sort_by { |a| a.abs }
    ans += sorted_group[1..-1].inject(0) { |sum, a| sum + a.abs } - sorted_group[0].abs
  else
    ans += group.inject(0) { |sum, a| sum + a.abs }
  end
end

puts ans