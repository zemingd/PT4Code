n = gets.to_i
as = gets.chomp.split.map(&:to_i)
as.map!.with_index(1) do |a, i|
  a - i
end
total = as.select(&:positive?).inject(:+).to_i + as.select(&:negative?).inject(:+).to_i
b = total.zero? ? 0 : total.abs / n
result1 = as.map do |a|
  (total.positive? ? a - b : a + b).abs
end
b += 1
result2 = as.map do |a|
  (total.positive? ? a - b : a + b).abs
end
puts [result1.inject(:+), result2.inject(:+)].min
