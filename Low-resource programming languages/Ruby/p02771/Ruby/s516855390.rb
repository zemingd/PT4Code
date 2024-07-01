a, b, c = gets.chomp.split(" ").map(&:to_i)

if (a == b && a != c) || (a == c && a != b) || (b == c && b != a)
  print "Yes\n"
else
  print "No\n"
end