n = gets.to_i

ret = 100000
(1..Math.sqrt(n)).each do |a|
  b = n / a
  next unless n == a * b

  tmp = [a.to_s.size, b.to_s.size].max
  ret = tmp if ret > tmp
end
puts ret
