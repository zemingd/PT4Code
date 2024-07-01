# your code goes here

size = gets.to_i;
input = gets.split(" ").map(&:to_i).reverse;

canmove = Array.new();

for i in 0..size-2 do
	if (input[i] > input[i+1])
		canmove.push(0)
	else
		canmove.push(1)
	end
end
canmove.reverse!

maxmove = 0
move = 0
canmove.each { |i|
	if (i==1)
		move = move + 1
	else
		if move > maxmove
			maxmove = move
		end
		move = 0
	end
}

if move > maxmove
	maxmove = move
end

puts maxmove
