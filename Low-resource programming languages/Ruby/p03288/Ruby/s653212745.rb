r = gets.chomp.split(" ").map(&:to_i)

if r < 1200 then
  print "ABC"
elsif r < 2800 then
  print "ARC"
else
  print "AGC"
