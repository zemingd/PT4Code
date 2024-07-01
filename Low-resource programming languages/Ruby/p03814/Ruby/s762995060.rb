s = gets.chomp
f = s.index("A")
e = s.length - (s.reverse.index("Z"))
print(e-f)