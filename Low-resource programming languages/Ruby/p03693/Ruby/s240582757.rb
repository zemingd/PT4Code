a = gets.chomp.delete!(' ').to_i;
result = "YES"
if a % 4 != 0 then
	result = "NO"
end

print(result)