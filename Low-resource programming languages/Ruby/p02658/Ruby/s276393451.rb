n = gets.to_i
line = gets.chomp.split(" ").map(&:to_i);

answer = 1

for i in 0 .. (line.length-1) do
	answer = answer * line[i]
	if answer > 1000000000000000000 then
		puts "-1"
		exit
	end
end


puts answer