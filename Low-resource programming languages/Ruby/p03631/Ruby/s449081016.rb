a = gets.chomp.split('').map(&:to_i)
if a[0] == a[2]
	puts "Yes"
else
	puts "No"
end
