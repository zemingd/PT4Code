n, m = gets.chomp.split.map(&:to_i)

if n%m !=0
	puts (n/m)+1
else
	puts n/m
end