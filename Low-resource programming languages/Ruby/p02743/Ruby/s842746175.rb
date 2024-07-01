a, b, c = gets.split.map(&:to_i)

print (a ** 2) + (b ** 2) - (c ** 2) > 0 ? "Yes" : "No"
