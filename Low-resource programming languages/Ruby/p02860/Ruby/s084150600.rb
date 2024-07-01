n = gets.chomp.to_i
s = gets.chomp

if !n.even? 
	puts "No"
	exit 
end

puts s.slice(0,n/2) == s.slice(n/2, n/2) ? "Yes" : "No"

