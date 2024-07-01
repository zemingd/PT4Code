s = gets.chomp

st = s.index('A')
e = s.size - s.reverse.index('Z')
p e - st
