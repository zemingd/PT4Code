s = gets.chomp
s.gsub!(/eraser/, '')
s.gsub!(/erase/, '')
s.gsub!(/dreamer/, '')
s.gsub!(/dream/, '')
print s == '' ? 'YES' : 'NO'