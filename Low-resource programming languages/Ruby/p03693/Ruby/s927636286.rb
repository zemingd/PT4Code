r,g,b = gets.map(&:to_i)
puts (100*r + 10*g + b) % 4 == 0 ? "YES" : "NO"