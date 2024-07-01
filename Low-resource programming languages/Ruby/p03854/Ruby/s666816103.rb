s = gets.chomp.to_s
s.gsub!(/eraser/, "")
s.gsub!(/erase/, "")
s.gsub!(/dreamer/, "")
s.gsub!(/dream/, "")
if s == ""
  puts "YES"
else
  puts "NO"
end