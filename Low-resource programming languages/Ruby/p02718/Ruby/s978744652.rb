n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ", n).map(&:to_i)

sum = a.inject(&:+)
a.sort!{|a, b| b <=> a}
if a[m-1] >= sum * (1.to_f / (4 * m))
  print "Yes\n"
else
  print "No\n"
end