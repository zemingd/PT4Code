s = gets.chomp.split("")
t = gets.chomp.split("")

pp [s, t]
s.sort!
t.sort!
t.reverse!
s = s.join("")
t = t.join("")

if s < t
  puts "Yes"
else
  puts "No"
end


