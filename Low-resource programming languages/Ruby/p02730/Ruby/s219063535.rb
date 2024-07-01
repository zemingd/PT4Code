s = gets.chomp

if s != s.reverse
  print "No\n"
else
  ss = s.slice(0, (s.length-1)/2)
  p ss
  if ss != ss.reverse
    print "No\n"
  else
    print "Yes\n"
  end
end
