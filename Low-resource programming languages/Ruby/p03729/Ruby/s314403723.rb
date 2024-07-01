a, b, c = gets.chomp.split

ans = a[-1] == b[0] && b[-1] == c[0]
puts ans ? "YES" : "NO"