r, g, b = gets.chop.split.map(&:to_i)
print (r * g * b) % 4 == 0 ? "YES" : "NO"