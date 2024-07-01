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
end

sum = 0

(0..count).each do |i|
	sum += 2**i
end

puts sum