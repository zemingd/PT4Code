def change (str, n, ary, i)
	if n == 0
		return str
	end
		
	c = str[i]
	ind = ary.index(c)
	if n >= (26 - ind)
		str[i] = "a"
		n = n - (26 - ind)
    end

	c = str[i]
	ind = ary.index(c)

	if i  == str.size-1
		nn = n%26
		str[i] = ary[ind+nn]
		n = 0
    end
    
	change(str, n, ary, i+1)
end	

str = gets.chomp
n = gets.chomp.to_i

ary = [*('a'..'z')]

puts(change(str, n, ary, 0))