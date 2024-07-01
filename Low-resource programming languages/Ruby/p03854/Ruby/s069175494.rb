s = gets.strip
a = %w(dream dreamer erase eraser).map(&:reverse).join('|')
x = s.reverse.gsub!(/#{a}/, '')
puts x == '' ? "YES" : "NO"