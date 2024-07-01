a, b, c = gets.chomp.split(" ").map(&:to_s)

if(a[a.length-1] == b[0] && b[b.length-1] == c[0])
  print "YES"
else
  print "NO"
end
