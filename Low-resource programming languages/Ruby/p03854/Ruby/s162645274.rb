s = gets.chomp.to_s
 

s.gsub!(/erase/, "")
s.gsub!(/dreamer/, "")
s.gsub!(/dream/, "")
s.gsub!(/eraser/, "")
 
puts s == '' ? 'YES':'NO'