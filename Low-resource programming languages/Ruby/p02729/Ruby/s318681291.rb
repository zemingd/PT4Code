n, m = gets.chomp.split(" ").map(&:to_i)

if(n >= 2 && m >= 2)
	puts (n * (n - 1) / 2) + (m * (m - 1) / 2)
elsif(n >= 2)
	puts n * (n - 1) / 2
elsif(m >= 2)
	puts m * (m - 1) / 2
else
	puts 0
end
