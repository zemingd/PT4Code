A, B, C = gets.chomp.split(' ').map(&:to_i)

if (A - B) >= C
  print 0
else
  print C - (A - B)
end
