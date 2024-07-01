input = gets
r = input.to_f
area = (r**2 * Math::PI).round(6)
longs = (2 * Math::PI * r).round(6)
print area, " ", longs, "\n"