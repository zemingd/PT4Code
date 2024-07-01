x,a,b=gets.split.map(&:to_i)

if a >= b
  puts "delicious"
elsif x >= b-a
   	puts "safe"
else
	puts "dangerous"
end
