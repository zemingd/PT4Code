s = gets.strip
s1 = s[0..1].to_i
s2 = s[2..3].to_i

if s1 <= 12 && s2 <= 12 && s1 >= 1 && s2 >= 1
  print 'AMBIGUOUS'
elsif s1 <= 12 && s1 >= 1
  print 'MMYY'
elsif s2 <= 12 && s2 >= 1
  print 'YYMM'
else
  print 'NA'
end