A = ARGV[0].to_i
B = ARGV[1].to_i

if A > 100 || A < 0
  exit
end

if B > 1000 || B < 2
  exit
end

if B % 2 != 0
  exit
end

if A >= 13
  print "#{B}"
elsif A >= 6 && A <= 12
  print "#{B/2}"
else
  print "0"
end