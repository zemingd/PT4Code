N = gets.to_i
a_list = gets.split.map(&:to_i)
table = Hash.new { 0 }
a_list.each do |a|
  table[a] += 1
  table[a - 1] += 1
  table[a + 1] += 1
end
ans = table.values.max
puts ans
