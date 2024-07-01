n = gets.to_i
as = gets.split.map(&:to_i)
bcs = as.map { |a| [a + 1, a - 1] }.flatten

count = [*as, *bcs].each_with_object(Hash.new(0)) do |n, h|
  h[n] += 1
end

puts count.values.max
