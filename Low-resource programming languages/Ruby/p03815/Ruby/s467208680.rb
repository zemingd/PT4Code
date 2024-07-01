x = gets.to_i

a = x % 11
b = (x/11).floor

if a == 0 then
	a = 0
elsif a < 7 
	a = 1
elsif a > 7
	a = 2
else 
	a = 2
end

print(a+b*2, "\n")
