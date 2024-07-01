A, B = gets.chomp.split(' ').map(&:to_i)

i = (A - B)
if (i / 2.0) == (i / 2)
  if A < B
    print A + ((A - B) / 2).abs
  else
    print B + ((A - B) / 2).abs
  end
else
  print 'IMPOSSIBLE'
end
