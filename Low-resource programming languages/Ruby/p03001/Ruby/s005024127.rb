W, H, x, y = gets.chomp.split.map(&:to_i)
if x == W / 2.0 && y == H / 2.0
  print "#{(W * H) / 2.0} 1\n"
else
  print "#{(W * H) / 2.0} 0\n"
end
