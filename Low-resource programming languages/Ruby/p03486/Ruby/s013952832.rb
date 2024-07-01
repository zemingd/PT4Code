s = gets.strip.split.map(&:to_s)
t = gets.strip.split.map(&:to_s)
a = s.sort
b = t.sort.reverse
if a < b
  puts "Yes"
else
  puts "No"
end