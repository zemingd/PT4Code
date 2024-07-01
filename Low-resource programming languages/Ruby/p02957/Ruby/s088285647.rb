A, B = gets.split.map(&:to_i)

if (A+B).odd?
  print "IMPOSSIBLE\n"
else
  p (A+B)/2
end