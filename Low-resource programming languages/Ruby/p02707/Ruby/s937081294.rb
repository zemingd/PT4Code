n = gets.chomp.to_i
a_list = gets.chomp.split.map(&:to_i)
result = (0...n).map{|x| 0}
a_list.group_by{|x| x}.each do |x|
  result[x[0]] = x[1].size
end
result.each do |x|
  puts x
end