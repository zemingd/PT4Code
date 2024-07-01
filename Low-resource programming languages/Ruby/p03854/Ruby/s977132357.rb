str = gets.chomp.to_s.reverse
ans = 'NO'
strings = ['dream', 'dreamer', 'erase', 'eraser']

strings.each do |s|
  s.reverse!
  str.gsub!(/#{s}/, '')
end

ans = 'YES' if str.empty?
puts ans
