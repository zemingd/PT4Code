hi = gets.chomp.split("hi")

if hi.find{|x| x != ""}
  print "No\n"
else
  print "Yes\n"
end