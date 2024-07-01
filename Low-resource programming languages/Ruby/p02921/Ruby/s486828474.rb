a, b = gets.strip.split.map(&:to_i)
c = b == 1 ? 0 : 1
d = a
until d >= b
  d += (a - 1)
  c += 1
end
puts c