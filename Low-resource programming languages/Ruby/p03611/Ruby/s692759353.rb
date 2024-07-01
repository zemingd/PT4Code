n = gets.to_i
as = gets.split.map(&:to_i)

count = Array.new((n + 1) * 3, 0)
as.each do |a|
  count[a - 1] += 1
  count[a] += 1
  count[a + 1] += 1
end

puts count.max
