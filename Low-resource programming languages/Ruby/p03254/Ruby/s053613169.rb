n,x = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i)
count = 0
a.sort!
sum = a.inject(:+)

if sum == x
	count = n
else
	n.times do
		break if x < a[0]
	x = x - a.shift
	count+=1
	end
count = count - 1 if count == n
end

puts count