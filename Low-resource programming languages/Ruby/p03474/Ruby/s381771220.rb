a,b = gets.split(" ").map(&:to_i)
s =gets.chomp.split("").map(&:to_s)
result = 0
for i in 0...s.length do
	if s[i].to_i.to_s != s[i].to_s then
		if i == a then
			result += 1
		else
			result -= a + b
		end
	end
end
if result == 1 then
	puts "Yes"
else
	puts "No"
end