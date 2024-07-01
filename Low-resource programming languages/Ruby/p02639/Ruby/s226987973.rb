line = gets.chomp.split(" ").map(&:to_i);

answer=0
for i in 0..(line.length-1)do
	if line[i]==0 then
		answer = i + 1
	end
end
puts answer

