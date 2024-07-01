m = 998244353

gets # drop N

d = gets.split.map(&:to_i)

grouped = d.group_by { |i| i }
sorted_keys = grouped.keys.sort

unless sorted_keys.each_with_index.all? { |a, b| a == b }
  puts 0
  exit
end

if grouped[0].size != 1 || d[0] != 0
  puts 0
  exit
end

answer = 1

sorted_keys.drop(1).each do |key|
  answer *= (grouped[key - 1].size ** grouped[key].size)
  answer %= m
end

puts answer
