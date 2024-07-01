
a, b = gets.split(" ").map(&:to_i)

c = (a * 0.08).ceil

while ((c - 1) * 0.08).floor == a && ((c - 1) * 0.1).floor == b
  c -= 1
end

puts (c * 0.08).floor == a && (c * 0.1).floor ? c : -1
