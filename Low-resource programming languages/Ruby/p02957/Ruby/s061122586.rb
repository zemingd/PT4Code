a, b = gets.chomp.split.map(&:to_i)

a, b = b, a if a > b

result = false
result_k = nil
((a + 1)...b).each do |k|
  next unless (a - k).abs == (b - k).abs

  result = true
  result_k = k
end

puts result ? result_k : 'IMPOSSIBLE'
