s = gets.chomp.split("")

n = s.length

i = n / 2

def f(k)
	l = k.length
	for j in 0..(l/2) do
		if(k[0+j] == k[l-1-j])
		else
			return "No"
		end
	end
	return "Yes"
end

if(n % 2 == 0)
newS_1 = s[0...i]
newS_2 = s[i..n]
else
newS_1 = s[0...i]
newS_2 = s[(i+1)..n]
end

if(f(s) == "Yes" && f(newS_1) == "Yes" && f(newS_2) == "Yes")
	puts "Yes"
else
	puts "No"
end