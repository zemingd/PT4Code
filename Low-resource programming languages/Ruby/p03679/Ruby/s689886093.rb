x,a,b = gets.chomp.split.map(&:to_i)

if b <= a
  puts "delicious"
elsif b >= a && b <= (x+a)
  puts "safe"
else
  puts "dangerous"
end