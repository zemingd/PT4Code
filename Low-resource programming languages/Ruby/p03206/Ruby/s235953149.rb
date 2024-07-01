def solve(n)
	if n==7 or n==5 or n==3
		"YES"
	else
		"NO"
	end
end

x   = gets.split.map(&:to_i)
ans = solve(x)
puts(ans)