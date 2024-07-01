s = gets.chomp("\n")
str = s.gsub(/(!erase|eraser)/,'').gsub(/(!dream|dreamer)/,'').gsub(/dream/,'').gsub(/erase/,'')
result = str&.length == 0 ? 'YES' : 'NO'
puts result