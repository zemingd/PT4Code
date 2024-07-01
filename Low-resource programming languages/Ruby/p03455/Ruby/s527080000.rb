a,b = gets.chomp.split(" ").map(&:to_i);
c = a*b
result = "Odd"

if c % 2 == 0 then
	result = "Even"
end

print(result)