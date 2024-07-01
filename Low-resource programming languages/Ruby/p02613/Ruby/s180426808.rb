n = gets.chomp.to_i
ac = 0
wa = 0
tel = 0
re = 0
n.times do
  s = gets.chomp
  if s == "AC"
    ac += 1
  end
  if s == "WA"
    wa += 1
  end
  if s == "TEL"
    tel += 1
  end
  if s == "RE"
    re += 1
  end
end
print "AC"
print " "
print "x"
print " "
print ac
print "\n"
print "WA"
print " "
print "x"
print " "
print wa
print "\n"
print "TEL"
print " "
print "x"
print " "
print tel
print "\n"
print "RE"
print " "
print "x"
print " "
print re
print "\n"
