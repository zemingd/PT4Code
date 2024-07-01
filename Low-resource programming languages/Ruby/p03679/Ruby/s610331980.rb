X,A,B = gets.split.map &:to_i
if A+B > X
  puts "dangerous"
elsif B > A
  puts "safe"
else
  puts "delicious"
end