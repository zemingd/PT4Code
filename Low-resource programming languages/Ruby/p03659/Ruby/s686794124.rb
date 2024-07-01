n = gets.to_i
as = gets.split.map(&:to_i)

sum = as.inject(:+)
x = as.shift
ans = (2 * x - sum).abs

as[0..-2].each do |a|
  x += a
  diff = (2 * x - sum).abs
  ans = diff if diff <= ans
end

puts ans
