s = gets

s_head = s.scan(/^./)
s_end = s.scan(/.$/)
size = s.size - 3

puts s_head + size + _end