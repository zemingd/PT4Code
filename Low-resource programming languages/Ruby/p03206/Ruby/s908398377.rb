def eve(n)
	if n==24 
		" Eve"
	elsif n==23
		" Eve Eve"

	elsif n==22
		" Eve Eve Eve"
	else
		"" 
	end
end

x	= gets.to_i
ans	= "Christmas" + eve(x)
puts(ans)