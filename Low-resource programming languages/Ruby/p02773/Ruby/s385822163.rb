n = gets.to_i
ary = []
n.times { ary << gets.chomp }

result = {}
ary.each do |a|
  result[a] = 0 if result[a].nil?
  result[a] += 1
end

group = result.group_by{|k,v| v}

group.max[1].to_h.keys.sort.each do |v|
  puts v
end
