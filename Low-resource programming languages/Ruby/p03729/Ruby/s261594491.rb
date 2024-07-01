a, b, c = readline.chomp.split
puts a[a.size - 1] == b[0] && b[b.size - 1] == c[0] ? "YES" : "NO"