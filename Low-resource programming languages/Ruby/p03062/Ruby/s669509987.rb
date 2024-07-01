n = gets.to_i
as = gets.split.map(&:to_i)

ans = 0
count = 0

n.times do |i|
  if as[i] < 0
    count += 1
    as[i] = as[i] * -1
  end
  ans += as[i]
end

ans -= (as.min * 2) if count % 2 != 0

puts ans
