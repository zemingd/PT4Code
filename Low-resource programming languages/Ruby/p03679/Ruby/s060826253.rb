x,a,b = gets.split.map(&:to_i)
if b <= a
	puts "delicious"
elsif x >= (b-a)
	puts "safe"
else
	puts "dangerous"
end
