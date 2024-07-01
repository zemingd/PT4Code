s = gets
str = ['eraser', 'dreamer', 'dream',  'erase']
str.each{ |var| s.gsub!(/#{var}/, '') }
puts s.chomp! == "" ? 'YES' : 'NO'

