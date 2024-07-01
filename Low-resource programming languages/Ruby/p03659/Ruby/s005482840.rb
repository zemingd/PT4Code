n = gets.to_i
a = gets.split(' ').map(&:to_i)

am = a.inject(0, :+)

i, s = 1, a[0]

while s < am / 2 && i < n - 1
  s += a[i]
  i += 1
end

# (s - (all - s))

r = (2 * s - am).abs
r = [r, (2 * (s - a[i - 1]) - am).abs].min if i > 1
puts r
