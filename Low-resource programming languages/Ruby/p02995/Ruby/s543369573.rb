a, b, c, d = gets.split.map(&:to_i)

divc = (b - a + 1) / c
if a <= (divc + 1) * d && (divc + 1) * c <= b
  divc += 1
end

divd = (b - a + 1) / d
if a <= (divd + 1) * d && (divd + 1) * d <= b
  divd += 1
end

divcd = (b - a + 1) / (c * d)
if a <= (divcd + 1) * (c * d) && (divcd + 1) * (c * d) <= b
  divcd += 1
end

puts (b - a + 1) - divc - divd + divcd