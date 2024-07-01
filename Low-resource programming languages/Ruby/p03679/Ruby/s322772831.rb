x,a,b=gets.chomp.split.map(&:to_i)
if b-a <= 0
  puts "delicious"
elsif b-a > 0 && b-a<=x
  puts "safe"
else
  puts "dangerous"
end