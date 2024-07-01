x,a,b = gets.chomp.split(" ").map(&:to_i)

if (a-b) <= 0
  if -(a-b) >= x
    puts "dangerous"
  else
    puts "safe"
  end
else
  puts "delicious"
end
