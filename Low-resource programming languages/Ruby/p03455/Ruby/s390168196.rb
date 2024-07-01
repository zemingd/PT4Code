a,b = gets.chomp.split.map(&:to_i)
if (a%2==0 || b%2==0)
  print "Even\n"
else
 print "Odd\n"
end