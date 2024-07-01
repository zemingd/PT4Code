a, b, c, d = gets.split.map(&:to_i)

divc = (b - a + 1) / c
if a <= (divc + 1 + (a-1) / c) * c && (divc + 1 + (a-1) / c) * c <= b
  divc += 1
end

divd = (b - a + 1) / d
if a <= (divd + 1 + (a-1) / d) * d && (divd + 1 + (a-1) / d) * d <= b
  divd += 1
end

lcmcd = c.lcm(d)
divcd = (b - a + 1) / lcmcd
if a <= (divcd + 1 + (a-1) / lcmcd) * lcmcd && (divcd + 1 + (a-1) / lcmcd) * lcmcd <= b
  divcd += 1
end

puts (b - a + 1) - divc - divd + divcd