a, b, c = gets.chomp.split(" ")
puts (a[a.size-1] == b[0] and b[b.size-1] == c[0])? "YES" : "NO"