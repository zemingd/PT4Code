loop do
  m , f , r = gets.split.map{|v|
    v.to_i
  }
  if m == -1 && f == -1 && r == -1
    break
  end
  if m == -1 || f == -1
    print "F", "\n"
  elsif m + f >= 80
    print "A", "\n"
  elsif m + f >= 65 && m + f < 80
    print "B", "\n"
  elsif m + f >= 50 && m + f < 65
    print "C", "\n"
  elsif m + f >= 30 && m + f < 50 && r >= 50
    print "C", "\n"
  elsif m + f >= 30 && m + f < 50
    print "D", "\n"
  elsif m + f < 30
    print "F", "\n"
  end
end
