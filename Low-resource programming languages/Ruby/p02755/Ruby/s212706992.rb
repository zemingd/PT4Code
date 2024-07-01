
a, b = gets.split(" ").map(&:to_i)

c = (a * 100 / 8.0).ceil
d = (b * 100 / 10.0).ceil

n = [c, d].max
ans = -1

while (n * 0.08).floor == a || (n * 0.1).floor == b
  ans = n if (n * 0.08).floor == a && (n * 0.1).floor == b
  n -= 1
end

puts ans
