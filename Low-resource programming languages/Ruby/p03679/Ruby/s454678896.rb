X,A,B = gets.split.map(&:to_i)
if A-B <= 0
  puts "delicious"
elsif B-A <= X
  puts "safe"
else
  puts "dangerous"
end