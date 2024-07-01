N = gets.chomp.to_i
x = N / 10 + N % 10
if N % x == 0
  print "Yes"
else print "No"
end
