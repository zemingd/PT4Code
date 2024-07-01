a, b, c = gets.split(" ")
ok = (a[a.length - 1] == b[0] && b[b.length - 1] == c[0])
puts ok ? "YES": "NO"