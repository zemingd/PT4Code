a = gets.chomp.split(' ')
if a[2].to_i < a[1].to_i && a[1].to_i < a[3].to_i && a[0].to_i < a[2].to_i && a[2].to_i < a[1].to_i
	puts "#{a[1].to_i - a[2].to_i}"
elsif a[0].to_i < a[2].to_i && a[1].to_i > a[3].to_i
	puts "#{a[3].to_i - a[2].to_i}"
elsif a[2].to_i < a[0].to_i && a[0].to_i < a[3].to_i && a[0].to_i < a[3].to_i && a[3].to_i < a[1].to_i
	puts "#{a[3].to_i - a[0].to_i}"
elsif a[2].to_i < a[0].to_i && a[3].to_i > a[1].to_i
	puts "#{a[1].to_i - a[0].to_i}"
else
	puts 0
end
