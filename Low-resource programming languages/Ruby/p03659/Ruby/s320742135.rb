N = gets.to_i
as = gets.split.map(&:to_i)
total = as.inject(:+)
ans = 10 ** 9
x = 0
for i in 0..(N - 2) do
  x += as[i]
  y = total - x
  diff = (x - y).abs
  ans = diff if diff < ans
end

puts ans