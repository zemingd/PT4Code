x,a,b = gets.split.map(&:to_i)
if x < b-a
  puts "dangerous"
elsif b > a
  puts "safe"
else
  puts "delicious"
end