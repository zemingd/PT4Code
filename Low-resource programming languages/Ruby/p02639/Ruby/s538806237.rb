x, y = gets.split(" ").map(&:to_i)

b = (y / 2) - x
a = x - b

if (b * 2) % 2 == 1 && (b * 2) % 2 == 1
	puts "no"
elsif b >= 0 && a >= 0
  puts "yes"
else
  puts "no"
end