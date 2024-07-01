a, b = gets.strip.split.map(&:to_i)
c = 0
d = a
unless b == 1
  c = 1
end
until d >= b
  d += a - 1
  c += 1
end
puts c