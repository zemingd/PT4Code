s = gets.chomp.split("")
t = gets.chomp.split("")
t.pop
if s.join == t.join
  puts "Yes"
else
  puts "No"
end
