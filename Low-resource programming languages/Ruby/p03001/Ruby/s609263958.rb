w, h, x, y = gets.chomp.split.map(&:to_i)
print w * h / 2.0
if x * 2 == w && y * 2 == h
  print " 1\n"
else
  print " 0\n"
end
