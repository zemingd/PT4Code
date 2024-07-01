s = gets.chomp
print s =~ /\A(dream|dreamer|erase|eraser)*\z/ ? 'YES' : 'NO'