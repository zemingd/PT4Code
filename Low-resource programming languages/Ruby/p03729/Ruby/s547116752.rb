a,b,c = gets.split(" ").map(&:to_s)

result = "NO"
result = "YES" if a[a.length-1] == b[0] and b[b.length-1] == c[0]
puts result