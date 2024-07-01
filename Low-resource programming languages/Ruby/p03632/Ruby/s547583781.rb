a, b, c, d = gets.chomp.split(' ').map(&:to_i)

if b <= c
  print '0'
  return
end

if d <= a
  print '0'
  return
end

if a <= c
  if b < d
    print "#{b-c}"
  else
    print "#{d-c}"
  end
else
  if b < d
    print "#{b-a}"
  else
    print "#{d-a}"
  end
end