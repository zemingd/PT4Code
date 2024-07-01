s = gets.strip.split.map(&:to_s)
t = gets.strip.split.map(&:to_s)
a = s.sort.join("")
b = t.sort.reverse.join("")
if a < b
  puts "Yes"
else
  puts "No"
end