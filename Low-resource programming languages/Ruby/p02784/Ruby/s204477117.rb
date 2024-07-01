n, m= gets.chomp.split.map(&:to_i)
d = gets.chomp.split.map(&:to_i)

if d[0..m-1].sum >= n
	puts "Yes"
else
	puts "No"
end