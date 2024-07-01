s = gets
 
s = s.gsub(/dream/, '') ? s.gsub(/dream/, ''): s
s = s.gsub(/dreamer/, '') ? s.gsub(/dreamer/, ''): s
s = s.gsub(/erase/, '') ? s.gsub(/erase/, ''): s
s = s.gsub(/eraser/, '') ? s.gsub(/eraser/, ''): s
puts s ? 'YES':'NO'