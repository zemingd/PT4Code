a, b = gets.split.map(&:to_i)

if a == b
  print 0
else
  if (a+b).even?
    k = (a+b)/2
    if (a-k<0 && b-k>0) || (a-k>0 && b-k<0)
      print k
    else
      print "IMPOSSIBLE"
    end
  else
    print "IMPOSSIBLE"
  end
end