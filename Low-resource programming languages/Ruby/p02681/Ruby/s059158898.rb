s = gets.chars.map(&:chomp)
t = gets.chars.map(&:chomp)
s.pop
t.pop
t.pop
if s == t
  puts "Yes"
else
  puts "No"
end