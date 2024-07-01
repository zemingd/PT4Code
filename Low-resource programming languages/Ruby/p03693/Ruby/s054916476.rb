r,g,b = gets.split.map(&:to_i)
puts (g+b)%4==0 ? "YES" : "NO"