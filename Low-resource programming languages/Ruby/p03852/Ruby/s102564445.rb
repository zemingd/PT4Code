s = gets
 
s.gsub!(/eraser/, "")
s.gsub!(/erase/, "")
s.gsub!(/dreamer/, "")
s.gsub!(/dream/, "")
puts s ? 'YES':'NO'
