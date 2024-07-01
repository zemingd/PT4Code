N, K = gets.split.map(&:to_i)
table = Hash.new { 0 }
gets.split.map(&:to_i).each do |a|
  table[a] += 1
end
count_list = table.values.sort
c = [count_list.size - K, 0].max
ans = count_list.take(c).reduce(0, &:+)
puts ans
