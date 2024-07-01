h, n = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ", n).map(&:to_i)

sum = a.inject(:+)
if h <= sum
  print "Yes\n"
else
  print "No\n"
end