
a, b = gets.split(" ").map(&:to_i)

c = a * 100 / 8
d = b * 100 / 10

while (c - 1) * 8 / 100 == a
  c = (c - 1) * 8 / 100 == a
end

while (d - 1) * 10 / 100 == b
  d = (d - 1) * 10 / 100 == b
end

puts c == d ? c : -1
