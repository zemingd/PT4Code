s = gets.chomp

size = s.size
re = Regexp.compile(/(01|10)/)
while (s.gsub!(re, ''))
end
puts size - s.size
