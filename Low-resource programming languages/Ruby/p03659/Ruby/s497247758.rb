gets
as = gets.split.map &:to_i

s = 0
result = as.inject(:+).abs
as.each.with_index do |a, i|
  break if i == as.size - 1
  s += a
  result = [(result - 2 * s).abs, result].min
end

puts result
