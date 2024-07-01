n, m, c = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

ans = 0

n.times do
  sum = 0
  as = gets.split.map(&:to_i)
  m.times do |j|
    sum += as[j] * bs[j]
  end

  ans += 1 if sum + c > 0
end

puts ans
