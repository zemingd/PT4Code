n = gets.to_i
a = gets.split.map(&:to_i)
arr = []
a.map.with_index(1){|x,i| [i,x]}.sort_by{|k,v| v}.each do |i,v|
  arr << i
end
puts arr.join(' ')