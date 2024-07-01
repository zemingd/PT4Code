a=[]
gets.split(" ").each{|f| a<<f.to_i}
if (((a[0]-a[1]).abs <= a[3]) && ((a[1]-a[2]).abs <= a[3])) || ((a[0]-a[2]).abs <= a[3]) then
   print "Yes"
else
  print "No"
end