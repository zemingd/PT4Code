s = gets.chomp

s.gsub!('eraser',  '')
# puts s

s.gsub!('erase',   '')
# puts s

s.gsub!('dreamer', '')
# puts s

s.gsub!('dream',   '')
# puts s

puts (s.size == 0) ? 'YES' : 'NO'
