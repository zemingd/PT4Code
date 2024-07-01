n = gets
arr = gets.chomp.split(" ")
if arr == arr.uniq
	puts "Yes"
else
	puts "No"
end