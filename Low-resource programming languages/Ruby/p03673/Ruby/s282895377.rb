n = gets.to_i
input = gets.chomp.split(" ")
reinput = input.reverse
if n % 2 == 0
	n.times do |i|
		input.delete_at(i + 1)
		reinput.delete_at(i + 1)
	end
else
	n.times do |i|
		input.delete_at(i)
		reinput.delete_at(i + 1)
	end	
end
if n == 1
	puts input
else
	puts (reinput + input).join(" ")
end
