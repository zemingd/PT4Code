_n = gets.to_i
a = gets.chomp.split.map(&:to_i)

add = a.map { |i| i + 1 }
sub = a.map { |i| i - 1 }
arr = a + add + sub

ans = arr.group_by(&:itself).transform_values(&:size).max_by { |_key, value| value }
puts ans.last