a = gets.split(' ').map(&:to_i)
b = a[1] - a[2]
c = a[1] - a[3]
if b > 0 && c > 0
	puts b - c
elsif b > 0 && c < 0
	puts b
else
	puts 0
end
