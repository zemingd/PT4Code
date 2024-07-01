x, a, b = gets.chomp.split(" ").map(&:to_i)
d = a - b

if d < 0
  if d.abs <= x
    puts "safe"
  else
    puts "dangerous"
  end
else
  puts "delicious"
end