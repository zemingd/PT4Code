a, b, c = gets.chop.split(" ").map(&:to_s)

as = a.split(//)
bs = b.split(//)
cs = c.split(//)

if as.last == bs.first && bs.last == cs.first
  puts "YES"
else
  puts "NO"
end