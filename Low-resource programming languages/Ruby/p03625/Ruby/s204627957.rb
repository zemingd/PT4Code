N=readline.to_i
 
sorted_a = readline.split.map(&:to_i).sort
rectangle_parts = sorted_a.group_by{|x|x}.map(&:last).reject{|group|group.size<2}

#p sorted_a.group_by{|x|x}
#p sorted_a.group_by{|x|x}.map(&:last)
#p sorted_a.group_by{|x|x}.map(&:last).reject{|group|group.size<2}
#p rectangle_parts

result = 
  if rectangle_parts.empty? || (rectangle_parts.length == 1 && rectangle_parts.last.length<4)
    0
  elsif rectangle_parts.last.length>=4
    rectangle_parts.last.first**2
  else
    rectangle_parts.last.first * rectangle_parts[-2].first
  end

p result




