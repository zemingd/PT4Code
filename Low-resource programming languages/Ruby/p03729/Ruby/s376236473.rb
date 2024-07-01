a, b, c = gets.chomp.split(" ").map &:to_s
if a.chars.last == b.chars.first && b.chars.last == c.chars.first
  puts "YES"
else
  puts "NO"
end