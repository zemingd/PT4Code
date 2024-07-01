a, b, c = gets.split.map(&:to_i)
  if a < b && b < c
    print 'YES'
  else
    print 'NO'
  end
  puts