n = gets.to_i
as = gets.split.map(&:to_i)
bs = as.map { |a| a + 1 }
cs = as.map { |a| a - 1 }

count = [*as, *bs, *cs].each_with_object(Hash.new(0)) do |n, h|
  h[n] += 1
end

puts count.values.max
