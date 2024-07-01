r,g,b=gets.chomp.split
puts (r+g+b).to_i % 4 == 0 ? "YES" : "NO"