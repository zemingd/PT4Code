a, b, c = gets.chop.split(" ").map(&:to_s)

a = a.split(//)
b = b.split(//)
c = c.split(//)

if a.last == b.first && b.last == c.first
  puts "YES"
else
  puts "NO"
end