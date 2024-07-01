s = gets.chomp
puts s.size-s.reverse.index("Z")-s.index("A")