a, b = gets.split().map(&:to_i)
i = a
n = 0
while i <= b
  c = i.to_s
  if c[0] == c[4] && c[1] == c[3]
    n += 1
  end
  i += 1
end
puts n