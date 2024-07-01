n = gets.to_i

list = n.times.map do |i|
  s, p_str = gets.split
  [s, p_str.to_i, i+1]
end.sort_by {|s, p, i| [s, -p]}

list.each do |s, p, i|
  puts i
end