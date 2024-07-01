a,b,c,d=gets.split.map &:to_i
puts a+b<c+d ? "Right" : a+b>c+d ? "Left" : "Balanced"