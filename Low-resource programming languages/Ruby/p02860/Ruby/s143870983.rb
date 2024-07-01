n = gets.to_i
s = gets.chomp
if n.odd?
	puts :No  
else
	puts(s[0,n/2]==s[n/2,n/2] ? :Yes : :No)
end