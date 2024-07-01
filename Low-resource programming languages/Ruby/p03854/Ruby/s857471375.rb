s = gets.chomp
puts s =~ /\A(dream|dreamer|erase|eraser)*\Z/ ? 'YES' : 'NO'