i = 0
while line = gets.chomp
  break if line == "0"
  i += 1
  print "Case #{i}: #{line}\n"
end