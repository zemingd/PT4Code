n = gets.to_i
reinput = gets.chomp.split(" ").reverse

if n % 2 == 0
	(n/2).times do |i|
		reinput.push( reinput.delete_at( (i*2 + 1) * (-1) ) )
	end
else
	(n/2).times do |i|
		reinput.push( reinput.delete_at( (i*2 + 2) * (-1) ) )
	end
end
if n == 1
	puts reinput
else
	puts reinput.join(" ")
end
