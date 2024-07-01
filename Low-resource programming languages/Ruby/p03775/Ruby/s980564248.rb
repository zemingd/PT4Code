# a, b, c, x, y = gets.split.map(&:to_i)
n = gets.to_i

ret = 100000
(1..n).each do |a|
  b = n / a
  break if a > b
  next unless n == a * b

  tmp = [a.to_s.size, b.to_s.size].max
  ret = tmp if ret > tmp
end
puts ret
