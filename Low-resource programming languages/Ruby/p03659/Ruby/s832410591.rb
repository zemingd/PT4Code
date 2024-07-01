gets
as = gets.split.map &:to_i

s = 0
total = as.inject(:+).abs
result = 2 * 10 ** 9
as.each.with_index(1) do |a, i|
  break if i == as.size
  s += a
  result = [(total - 2 * s).abs, result].min
end

puts result
