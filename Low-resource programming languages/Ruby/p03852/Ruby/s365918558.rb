s = gets.chomp.to_s
 
s.gsub!(/eraser/, "")
s.gsub!(/erase/, "")
s.gsub!(/dreamer/, "")
s.gsub!(/dream/, "")
 
puts s == '' ? 'YES':'NO'