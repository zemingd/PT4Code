n = gets.to_i
as = gets.split.map(&:to_i)
bs = as.map.with_index { |a, i| a - (i + 1) }
min = bs.min
max = bs.max
ans = nil
min.step(max) do |b|
  as.map.with_index { |a, i| (a - (b + i + 1)).abs }
  temp = as.map.with_index { |a, i| (a - (b + i + 1)).abs }.inject(:+)
  ans = [ans, temp].compact.min
end
puts ans
