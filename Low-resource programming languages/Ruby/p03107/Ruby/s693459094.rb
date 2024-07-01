s = gets.chomp

size = s.size
re1 = Regexp.compile(/01/)
re2 = Regexp.compile(/10/)
while (s.gsub!(re1, '') || s.gsub!(re2, ''))
end
puts size - s.size