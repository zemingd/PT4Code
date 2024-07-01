n = gets.to_i
a = gets.split.map(&:to_i).group_by{_1}
(1..n).each do |i|
  puts a[i] ? a[i].count : 0
end