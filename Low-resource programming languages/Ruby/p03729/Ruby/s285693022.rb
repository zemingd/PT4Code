a, b, c = gets().chomp.split("\s")

puts a[-1] == b[0] && b[-1] == c[0] ? 'YES' : 'NO'