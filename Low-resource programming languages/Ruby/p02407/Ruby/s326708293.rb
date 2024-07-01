n = gets.to_i
a = gets.split.reverse
for i in 1..n
  print " " if i != 1
  print a[i-1]
end
print "\n"