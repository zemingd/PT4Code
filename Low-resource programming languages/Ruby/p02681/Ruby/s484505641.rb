s = gets.chomp
t = gets.chomp
n = s.size
if t.slice(0,n) == s
	puts "Yes"
else
	puts "No"
end