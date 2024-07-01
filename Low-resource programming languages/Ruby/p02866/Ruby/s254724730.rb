m = 998244353

gets # drop N

grouped = gets.split.map(&:to_i).group_by { |i| i }
sorted_keys = grouped.keys.sort

unless sorted_keys.each_with_index.all? { |a, b| a == b }
  puts 0
  exit
end

answer = 0

sorted_keys.each do |key|
  if key == 0
    answer = grouped[key].size % m
    next
  end

  answer *= (grouped[key - 1].size ** grouped[key].size)
  answer %= m
end

puts answer
