s=gets.chomp
s.gsub!(/dreamer/,'')
s.gsub!(/dream/,'')
s.gsub!(/eraser/,'')
s.gsub!(/erase/,'')
puts s.empty? ? 'YES' : 'NO'