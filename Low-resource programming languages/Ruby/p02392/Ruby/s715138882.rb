ab = gets()
ar = ab.split(" ")
a = ar[0].to_i()
b = ar[1].to_i()
c = ar[2].to_i()
if a < b && b < c
  print "Yes\n"
else
  print "No\n"
end