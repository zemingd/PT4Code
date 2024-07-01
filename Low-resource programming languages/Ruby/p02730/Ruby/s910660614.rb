s = gets.chomp

unless s == s.reverse
  print "No"
  exit
end

n = s.size

f = s[0..((n - 1) / 2) - 1]
unless f == f.reverse
  print "No"
  exit
end

b = s[(n + 3) / 2 - 1 .. -1]
unless b == b.reverse
  print "No"
  exit
end

print "Yes"