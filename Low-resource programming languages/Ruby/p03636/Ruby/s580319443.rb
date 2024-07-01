s = gets.chomp

aida = (s.size) - 2
aida = aida.to_s
puts s[0] + aida + s[s.size-1]