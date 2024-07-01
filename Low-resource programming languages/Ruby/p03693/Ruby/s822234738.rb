r,g,b = gets.chomp.split(" ").map(&:to_i)
# r * 100 は明らかに4の倍数なのでg,bだけで良い
puts (g * 10 + b) % 4 == 0 ? "YES" : "NO"