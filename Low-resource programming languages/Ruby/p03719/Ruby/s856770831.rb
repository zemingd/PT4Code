str = gets().split(" ")
a = str[0].to_i
b = str[1].to_i
c = str[2].to_i

if a <= c && c <= b
	puts("Yes")
else
	puts("No")
end