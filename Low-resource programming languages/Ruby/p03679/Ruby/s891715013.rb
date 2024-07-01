a = gets.split(' ').map(&:to_i)
s =a[0] + a[1] - a[2]
if s >= a[0] + a[1] - a[0]
	puts "delicious"
elsif s >= 0
	puts "safe"
else
	puts "dangerous"
end