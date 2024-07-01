r, g, b = gets().chomp.split("\s")

puts ("#{r}#{g}#{b}").to_i % 4 == 0 ? 'YES' : 'NO'