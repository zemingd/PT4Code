n = gets.to_i
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

ans = 0
bs.each_with_index do |b, i|
  d = as[i] <= b ? as[i] : b
  as[i] = as[i] - d
  ans += d

  b -= d

  d = as[i + 1] <= b ? as[i + 1] : b
  as[i + 1] = as[i + 1] <= b ? 0 : as[i + 1] - b
  ans += d
end

puts ans
