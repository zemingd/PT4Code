x, y = gets.split.map(&:to_i)
l = []

a, b = x, y
l << b - a if b >= a

a, b = -x, y
l << b- a + 1 if b >= a

a, b = x, -y
l << b - a + 1 if b >= a

a, b = -x, -y
l << b - a + 2 if b >= a

puts l.min