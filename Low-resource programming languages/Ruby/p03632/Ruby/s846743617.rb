a = gets.chomp.split(' ')
if a[0] <= a[2] && a[1] <= a[3] && a[1] >= a[2]
	puts "#{a[1].to_i - a[2].to_i}"
elsif a[0] <= a[2] && a[1] >= a[3]
	puts "#{a[3].to_i - a[2].to_i}"
elsif a[2] <= a[0] && a[3] <= a[1] && a[3] >= a[0]
	puts "#{a[3].to_i - a[0].to_i}"
elsif a[2] <= a[0] && a[3] >= a[1]
	puts "#{a[1].to_i - a[0].to_i}"
else
	puts 0
end
