n = gets.to_i
input = gets.chomp.split(" ")
reinput = input.reverse
sum = reinput + input

n.times do |i|
	sum.delete_at(i+1)
end

if n == 1
	puts reinput
else
	puts sum.join(" ")
end
