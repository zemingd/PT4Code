n = gets.to_i
h = gets.split.map(&:to_i)
a = 0
i = 0
while (n > i + 1)
  c = 0
  while (n > i + 1) && (h[i] >= h[i + 1])
    c += 1
    i += 1
  end
  i += 1
  a = c if c > a
end
puts a