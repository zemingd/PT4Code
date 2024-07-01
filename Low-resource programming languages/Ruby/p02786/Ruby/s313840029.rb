n = gets.to_i

if n == 1
	puts 1
	exit
end

queue = []

count = 0

queue << n/2


while !queue.empty? do
	x = queue.shift
	count += 1
	next if x == 1
	queue << x/2
	queue << x/2
end

puts count*2+1