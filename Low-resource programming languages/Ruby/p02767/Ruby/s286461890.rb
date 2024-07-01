N = gets.to_i
ary = gets.split.map(&:to_i)
total = 0

ary.each do |elm|
  total += elm
end
aves = []
ave_a = total / N
ave_b = ave_a + 1

result_a = 0
result_b = 0
ary.each do |elm|
  result_a += (ave_a - elm) ** 2
  result_b += (ave_a - elm) ** 2
end
puts [result_a, result_b].min
