n = gets.chomp.to_i
v = gets.split.map(&:to_i)

prop_v1 = []
prop_v2 = []
pair_v = v.each_slice(2)
v1 = pair_v.map(&:first)
v2 = pair_v.map(&:last)

s_v1 = v1.group_by { |e| e }.each.sort_by { |e| e[1].size }.reverse
prop_v1.push [s_v1[0].first, s_v1[0].last.size]
prop_v1.push [s_v1[1].first, s_v1[1].last.size] if s_v1.size > 1
s_v2 = v2.group_by { |e| e }.each.sort_by { |e| e[1].size }.reverse
prop_v2.push [s_v2[0].first, s_v2[0].last.size]
prop_v2.push [s_v2[1].first, s_v2[1].last.size] if s_v2.size > 2

v1_is_one = prop_v1.size == 1
v2_is_one = prop_v2.size == 1

if prop_v1.first.first != prop_v2.first.first
  puts n - prop_v1.first.last - prop_v2.first.last
else
  if v1_is_one && v2_is_one
    sorted_p = [prop_v1, prop_v2].sort_by { |e| e.first.last }
    puts n - sorted_p.last.first.last
  elsif !v1_is_one && v2_is_one
    puts
  elsif v1_is_one && !v2_is_one
    puts
  else
    puts
  end
end
