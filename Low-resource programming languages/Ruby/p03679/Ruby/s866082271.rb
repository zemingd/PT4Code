x,a,b = gets.chomp.split(" ").map(&:to_i)

if (a-b) < 0
  if x + (a-b) < 0
    puts "dangerous"
  else
    puts "safe"
  end
else
  puts "delicious"
end
