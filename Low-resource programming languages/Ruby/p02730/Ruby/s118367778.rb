s = gets.chomp
N = s.size
h1 = s[0...((N-1)/2)]
h3 = s[((N+3)/2-1)...N]

if (h1 == h1.reverse && h3 == h3.reverse)
	puts "Yes"
	exit
end

puts "No"
