X,A,B = gets.split.map(&:to_i)
if a-b <= 0
  puts "delicious"
elsif b-a <= X
  puts "safe"
else
  puts "dangerous"
end