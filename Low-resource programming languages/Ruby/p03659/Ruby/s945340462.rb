n = gets.to_i
as = gets.split.map(&:to_i)
sum_all = as.inject(:+)
current = 0
sum_as = as.map { |num| current += num }
min = nil
0.step(n-2) do |i|
  x = sum_as[i]
  y = sum_all - x
  min = [min, (x-y).abs].compact.min
end
puts min