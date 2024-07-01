a, b, c = gets.split.map(&:upcase)
d = a.end_with?(b[0, 1])
e = b.end_with?(c[0, 1])
if d && e
  puts "YES"
  exit
else
  puts "NO"
  exit
end
