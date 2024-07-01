a,b = gets.chomp.split(" ").map(&:to_i);
c = a*b
result = "Even"

if c/2 = 0 then
	result = "Odd"
end

print(result)