n = gets.to_i
s = gets.chomp
if n % 2 != 0
  print "No\n"
elsif s[0, n/2] == s[n/2, n/2]
  print "Yes\n"
else
  print "No\n"
end