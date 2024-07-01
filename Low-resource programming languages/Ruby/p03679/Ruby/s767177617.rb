a,b,c=gets.split.map(&:to_i)
l = c - b

if l <= 0 && l <= a
  puts "delicious"
elsif l > 0 && l <= a
  puts "safe"
else
  puts "dangerous"
end 