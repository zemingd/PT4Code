a, b, c = gets.chomp.split(" ").map(&:to_i)

if 2*Math.sqrt(a*b) < c - b - a
  print "Yes\n"
else
  print "No\n"
end