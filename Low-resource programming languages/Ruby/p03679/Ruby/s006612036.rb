x,a,b = gets.chomp.split(" ").map(&:to_i)
if a>=b
  puts "delicious"
elsif x+a>=b
  puts "safe"
else
  puts "dangerous"
end