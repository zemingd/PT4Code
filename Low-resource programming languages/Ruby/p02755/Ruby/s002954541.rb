
a, b = gets.split(" ").map(&:to_i)

c = a * 100 / 8 + 1

while (c - 1) * 8 / 100 == a && (c - 1) * 10 / 100 == b
  c -= 1
end

puts c * 8 / 100 == a && c * 10 / 100 == b ? c : -1
