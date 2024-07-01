n = gets
arr = gets.chomp.split(" ")
if arr == arr.uniq
	puts "YES"
else
	puts "NO"
end