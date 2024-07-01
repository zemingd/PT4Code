n = gets.chomp.to_i
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
bs.unshift(0)
bs.push(0)
ans = 0
(n + 1).times do |i|
  if bs[i] >= as[i]
    ans += as[i]
    bs[i] -= as[i]
    as[i] = 0
  else
    ans += bs[i]
    as[i] -= bs[i]
    bs[i] = 0
  end
  if bs[i + 1] >= as[i]
    ans += as[i]
    bs[i + 1] -= as[i]
    as[i] = 0
  else
    ans += bs[i + 1]
    as[i] -= bs[i + 1]
    bs[i + 1] = 0
  end
end
puts ans