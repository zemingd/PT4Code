s = gets.chomp.chars
t = gets.chomp.chars

if s.join == t.slice(0..-2).join
  print "Yes"
else
  print "No"
end


