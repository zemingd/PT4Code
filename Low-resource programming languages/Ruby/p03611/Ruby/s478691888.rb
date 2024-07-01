n = gets.to_i
as = gets.split.map(&:to_i)

max = 10 ** 5
count = Array.new(max + 1, 0)

as.each do |a|
  count[a - 1] += 1
  count[a] += 1
  count[a + 1] += 1
end

puts count.max
