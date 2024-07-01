s = gets

s_head = s.scan(/^./)
s_end = s.scan(/.$/)
size = s.size - 1

puts "#{s_head}#{size}#{s_end}"