a = gets.split(" ").map(&:to_i)
if a[2] >= a[0] && a[2] <= a[1]
	puts "Yes"
else
	puts "No"
end
