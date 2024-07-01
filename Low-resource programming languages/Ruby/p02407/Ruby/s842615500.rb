n = gets.to_i
a = gets.split.map(& :to_i)
for i in 0...n
  print a[n - 1 - i]
  if i == n
    print "\n"
    break
  else
    print " "
  end
end