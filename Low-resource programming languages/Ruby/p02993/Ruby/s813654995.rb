s=gets.chomp
if(s =~(/(\d)\1/))
	puts("Bad")
else
	puts("Good")
end