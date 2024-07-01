a = gets.to_i
b = gets.to_i
c = gets.to_i
count =0
for i in a..b
	if c % i == 0 then
		count += 1
	end
end
p count 