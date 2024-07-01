a = gets.split.map do |i| i.to_i end
if a[0] < a[2]
	puts (a[0]..a[2]).include?(a[1]) ? "Yes" : "No"
else
	puts "No"
end