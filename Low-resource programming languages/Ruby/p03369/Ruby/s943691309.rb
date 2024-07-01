a, b, c, x, y = gets.chomp.split(" ").map(&:to_i)

c2 = c * 2

if c2 <= a && c2 <= b then
  puts [x, y].max * c2
  exit
end

if c2 > a && c2 > b then
  s = []
  s << c2 * y + (x - y).abs * a
  s << c2 * x + (y - x).abs * b
  s << x * a + y * b
  puts s.min
  exit
end

if c2 <= a && c2 >= b then
  if x >= y then
    puts c2 * x
    exit
  end

  if x < y then
    puts c2 * x + (y - x) * b
    exit
  end
end

if c2 > a && c2 < b then
  if y >= x then
    puts c2 * y
    exit
  end

  if y < x then
    puts c2 * y + (x - y) * a
    exit
  end
end

s = []
s << c2 * y + (x - y).abs * a
s << c2 * x + (y - x).abs * b
s << x * a + y * b
puts s.min
