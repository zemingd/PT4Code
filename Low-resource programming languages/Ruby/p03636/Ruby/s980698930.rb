s = gets.split
#出力できない、putsの仕様がよく分からない
size = s.size
length = size - 3

puts s[0] + length.to_s + s[size - 1]