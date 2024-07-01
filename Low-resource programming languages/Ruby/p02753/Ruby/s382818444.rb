input = gets.chomp!
if input.split("").uniq.size != 1
  print "Yes"
else
  print "No"
end