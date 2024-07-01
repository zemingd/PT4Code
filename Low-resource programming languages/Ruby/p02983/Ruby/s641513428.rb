L, R = gets.split.map(&:to_i)

if R - L >= 2019
  out = 0
else
  l = (L..R).map { |i| i % 2019 }
  min1 = l.min
  min2 = (l - [min1]).min

  out = min1 * min2
end

puts out
