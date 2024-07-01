str = gets.chomp
str.gsub!(/eraser/, '')
str.gsub!(/dreamer/, '')
str.gsub!(/dream|erase/, '')
puts str.empty? ? 'YES' : 'NO'
